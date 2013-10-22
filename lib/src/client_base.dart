library cloud_api;

import "dart:async";
import "dart:convert";

// TODO: look into other ways of building out the multiPartBody

/**
 * Base class for all API clients, offering generic methods for HTTP Requests to the API
 */
abstract class ClientBase {
  String get basePath;
  String get rootUrl;
  bool makeAuthRequests = false;
  final Map params = {};

  static const _boundary = "-------314159265358979323846";
  static const _delimiter = "\r\n--$_boundary\r\n";
  static const _closeDelim = "\r\n--$_boundary--";

  /**
   * Sends a HTTPRequest using [method] (usually GET or POST) to [requestUrl] using the specified [urlParams] and [queryParams]. Optionally include a [body] in the request.
   */
  Future<Map<String, dynamic>> request(String requestUrl, String method, {String body, String contentType:"application/json", Map urlParams, Map queryParams});

  /**
   * Joins [content] (encoded as Base64-String) with specified [contentType] and additional request [body] into one multipart-body and send a HTTPRequest with [method] (usually POST) to [requestUrl]
   */
  Future<Map<String, dynamic>> upload(String requestUrl, String method, String body, String content, String contentType, {Map urlParams, Map queryParams}) {
    var multiPartBody = new StringBuffer();
    if (contentType == null || contentType.isEmpty) {
      contentType = "application/octet-stream";
    }
    multiPartBody
    ..write(_delimiter)
    ..write("Content-Type: application/json\r\n\r\n")
    ..write(body)
    ..write(_delimiter)
    ..write("Content-Type: ")
    ..write(contentType)
    ..write("\r\n")
    ..write("Content-Transfer-Encoding: base64\r\n")
    ..write("\r\n")
    ..write(content)
    ..write(_closeDelim);

    return request(requestUrl, method, body: multiPartBody.toString(), contentType: "multipart/mixed; boundary=\"$_boundary\"", urlParams: urlParams, queryParams: queryParams);
  }

  static Map<String, dynamic> responseParse(int statusCode, String responseBody) {
    DetailedApiRequestError.validateResponse(statusCode, responseBody);

    if(responseBody.isEmpty) {
      return null;
    }
    return JSON.decode(responseBody);
  }
}

/**
 * Error thrown when the HTTP Request to the API failed
 */
class APIRequestError extends Error {
  final String message;
  APIRequestError([this.message]);
  String toString() => (message == null) ? "APIRequestException" : "APIRequestException: $message";
}

class DetailedApiRequestError extends Error {
  final int statusCode;
  final String body;

  DetailedApiRequestError._(this.statusCode, this.body);

  static void validateResponse(int statusCode, String responseBody) {
    if(statusCode >= 400) {
      throw new DetailedApiRequestError._(statusCode, responseBody);
    }
  }

  String toString() => '$statusCode - $body';
}
