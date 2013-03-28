part of blogger_v3_api_console;

/**
 * Base class for all Console API clients, offering generic methods for HTTP Requests to the API
 */
abstract class ConsoleClient extends Client {

  oauth2.OAuth2Console _auth; 

  ConsoleClient([oauth2.OAuth2Console this._auth]) : super();

  /**
   * Sends a HTTPRequest using [method] (usually GET or POST) to [requestUrl] using the specified [urlParams] and [queryParams]. Optionally include a [body] in the request.
   */
  Future request(String requestUrl, String method, {String body, String contentType:"application/json", Map urlParams, Map queryParams}) {
    var completer = new Completer();

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

    var url = new oauth2.UrlPattern(path).generate(urlParams, queryParams);

    Future clientCallback(http.Client client) {
      // A dummy completer is used for the 'withClient' method, this should
      // go away after refactoring withClient in oauth2 package
      var clientDummyCompleter = new Completer();

      if (method.toLowerCase() == "get") {
        client.get(url).then((http.Response response) {
          var data = JSON.parse(response.body);
          completer.complete(data);
          clientDummyCompleter.complete(null);
        }, onError: (AsyncError error) {
          completer.completeError(new APIRequestException("onError: $error"));
        });

      } else if (method.toLowerCase() == "post" || method.toLowerCase() == "put" || method.toLowerCase() == "patch") {
        // Workaround since http.Client does not properly support post for google apis
        var postHttpClient = new HttpClient();

        // On connection request set the content type and key if available.
        postHttpClient.openUrl(method, Uri.parse(url)).then((HttpClientRequest request) {
          request.headers.set(HttpHeaders.CONTENT_TYPE, contentType);
          if (makeAuthRequests && _auth != null) {
            request.headers.set(HttpHeaders.AUTHORIZATION, "Bearer ${_auth.credentials.accessToken}");
          }

          request.write(body);
          return request.close();
        }, onError: (error) => completer.completeError(new APIRequestException("POST HttpClientRequest error: $error")))
        .then((HttpClientResponse response) {
          // On connection response read in data from stream, on close parse as json and return.
          StringBuffer onResponseBody = new StringBuffer();
          response.transform(new StringDecoder()).listen((String data) => onResponseBody.write(data), 
              onError: (error) => completer.completeError(new APIRequestException("POST stream error: $error")), 
              onDone: () {
                var data = JSON.parse(onResponseBody.toString());
                completer.complete(data);
                clientDummyCompleter.complete(null);
                postHttpClient.close();
              });
        }, onError: (error) => completer.completeError(new APIRequestException("POST HttpClientResponse error: $error")));
      } else if (method.toLowerCase() == "delete") {
        var deleteHttpClient = new HttpClient();

        deleteHttpClient.openUrl(method, Uri.parse(url)).then((HttpClientRequest request) {
          // On connection request set the content type and key if available.
          request.headers.set(HttpHeaders.CONTENT_TYPE, contentType);
          if (makeAuthRequests && _auth != null) {
            request.headers.set(HttpHeaders.AUTHORIZATION, "Bearer ${_auth.credentials.accessToken}");
          }

          return request.close();
        }, onError: (error) => completer.completeError(new APIRequestException("DELETE HttpClientRequest error: $error")))
        .then((HttpClientResponse response) {
          // On connection response read in data from stream, on close parse as json and return.
          // TODO: response.statusCode should be checked for errors.
          completer.complete({});
          clientDummyCompleter.complete(null);
          deleteHttpClient.close();
        }, onError: (error) => completer.completeError(new APIRequestException("DELETE HttpClientResponse error: $error")));
      } else {
        // Method has not been implemented yet error
        completer.completeError(new APIRequestException("$method Not implemented"));
      }

      return clientDummyCompleter.future;
    };

    if (makeAuthRequests && _auth != null) {
      // Client wants an authenticated request.
      _auth.withClient(clientCallback); // Should not care about the future here.
    } else {
      // Client wants a non authenticated request.
      clientCallback(new http.Client()); // Should not care about the future here.
    }

    return completer.future;
  }
}

