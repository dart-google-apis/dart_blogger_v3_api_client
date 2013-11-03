library cloud_api.browser;

import "dart:async";
import "dart:html" as html;
import "dart:convert";
import "dart:js" as js;
import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'client_base.dart';

/**
 * Base class for all Browser API clients, offering generic methods for HTTP Requests to the API
 */
abstract class BrowserClient implements ClientBase {

  static const _corsCallback = 'handleCLientLoad';

  oauth.OAuth2 get auth;
  bool _jsClientLoaded = false;

  /**
   * Loads the JS Client Library to make CORS-Requests
   */
  Future _loadJsClient() {

    if (_jsClientLoaded) {
      return new Future.value();
    }

    var completer = new Completer();

    js.context[_corsCallback] =  () {
      _jsClientLoaded = true;
      completer.complete();
    };

    html.ScriptElement script = new html.ScriptElement();
    script.src = "https://apis.google.com/js/client.js?onload=$_corsCallback";
    script.type = "text/javascript";
    html.document.body.children.add(script);

    return completer.future;
  }

  /**
   * Makes a request via the JS Client Library to circumvent CORS-problems
   */
  Future<Map<String, dynamic>> _makeJsClientRequest(String requestUrl, String method, {String body, String contentType, Map queryParams}) {
    var requestData = new Map();
    requestData["path"] = requestUrl;
    requestData["method"] = method;
    requestData["headers"] = new Map();

    if (queryParams != null) {
      requestData["params"] = queryParams;
    }

    if (body != null) {
      requestData["body"] = body;
      requestData["headers"]["Content-Type"] = contentType;
    }
    if (makeAuthRequests && auth != null && auth.token != null) {
      requestData["headers"]["Authorization"] = "${auth.token.type} ${auth.token.data}";
    }

    var completer = new Completer();
    var request = js.context["gapi"]["client"].callMethod("request", 
      [new js.JsObject.jsify(requestData)]);
    var callback = (jsonResp, rawResp) {
      if (jsonResp == null || (jsonResp is bool && jsonResp == false)) {
        var raw = JSON.decode(rawResp);
        if (raw["gapiRequest"]["data"]["status"] >= 400) {
          completer.completeError(new APIRequestError("JS Client - ${raw["gapiRequest"]["data"]["status"]} ${raw["gapiRequest"]["data"]["statusText"]} - ${raw["gapiRequest"]["data"]["body"]}"));
        } else {
          completer.complete({});
        }
      } else {
        completer.complete(js.context["JSON"].callMethod("stringify", [jsonResp]));
      }
    };
    request.execute(callback);

    return completer.future;
  }

  /**
   * Sends a HTTPRequest using [method] (usually GET or POST) to [requestUrl] using the specified [urlParams] and [queryParams]. Optionally include a [body] in the request.
   */
  Future<Map<String, dynamic>> request(String requestUrl, String method, {String body, String contentType:"application/json", Map urlParams, Map queryParams}) {

    if (urlParams == null) urlParams = {};
    if (queryParams == null) queryParams = {};

    params.forEach((key, param) {
      if (param != null && queryParams[key] == null) {
        queryParams[key] = param;
      }
    });

    var path;
    if (requestUrl.substring(0,1) == "/") {
      path ="$rootUrl${requestUrl.substring(1)}";
    } else {
      path ="$rootUrl${basePath.substring(1)}$requestUrl";
    }
    var url = oauth.UrlPattern.generatePattern(path, urlParams, queryParams);

    var request = new html.HttpRequest();
    var completer = new Completer();

    void handleError() {
      if (request.status == 0) {
        _loadJsClient().then((v) {
          if (requestUrl.substring(0,1) == "/") {
            path = requestUrl;
          } else {
            path ="$basePath$requestUrl";
          }
          url = oauth.UrlPattern.generatePattern(path, urlParams, {});
          _makeJsClientRequest(url, method, body: body, contentType: contentType, queryParams: queryParams)
            .then((response) {
              var data = JSON.decode(response);
              completer.complete(data);
            })
            .catchError((e) {
              completer.completeError(e);
              return true;
            });
        });
      } else {
        var error = "";
        if (request.responseText != null) {
          var errorJson;
          try {
            errorJson = JSON.decode(request.responseText);
          } on FormatException {
            errorJson = null;
          }
          if (errorJson != null && errorJson.containsKey("error")) {
            error = "${errorJson["error"]["code"]} ${errorJson["error"]["message"]}";
          }
        }
        if (error == "") {
          error = "${request.status} ${request.statusText}";
        }
        completer.completeError(new APIRequestError(error));
      }
    }

    request.onLoad.listen((_) {
      if (request.status > 0 && request.status < 400) {
        var data = {};
        if (!request.responseText.isEmpty) {
          data = JSON.decode(request.responseText);
        }
        completer.complete(data);
      } else {
        handleError();
      }
    });

    request.onError.listen((_) => handleError());

    request.open(method, url);
    request.setRequestHeader("Content-Type", contentType);
    if (makeAuthRequests && auth != null) {
      auth.authenticate(request).then((request) => request.send(body));
    } else {
      request.send(body);
    }

    return completer.future;
  }
}
