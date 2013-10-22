library cloud_api.console;

import "dart:io";
import "dart:async";
import "package:http/http.dart";
import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'client_base.dart';

/**
 * Base class for all Console API clients, offering generic methods for HTTP Requests to the API
 */
abstract class ConsoleClient implements ClientBase {

  oauth2.OAuth2Console get auth;

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

    method = method.toLowerCase();

    var path;
    if (requestUrl.substring(0,1) == "/") {
      path ="$rootUrl${requestUrl.substring(1)}";
    } else {
      path ="$rootUrl${basePath.substring(1)}$requestUrl";
    }

    var url = new oauth2.UrlPattern(path).generate(urlParams, queryParams);
    var uri = Uri.parse(url);

    if (makeAuthRequests && auth != null) {
      // Client wants an authenticated request.
      return auth.withClient((r) => _request(r, method, uri, contentType, body));
    } else {
      // Client wants a non authenticated request.
      return _request(new Client(), method, uri, contentType, body);
    }
  }

  Future<Map<String, Object>> _request(Client httpClient, String method, Uri uri,
                        String contentType, String body) {
    var request = new Request(method, uri)
      ..headers[HttpHeaders.CONTENT_TYPE] = contentType;

    if(body != null) {
      request.body = body;
    }

    return httpClient.send(request)
        .then(Response.fromStream)
        .then((Response response) {
          return ClientBase.responseParse(response.statusCode, response.body);
        })
        .whenComplete(() {
          httpClient.close();
        });
  }
}
