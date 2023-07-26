// Dart imports:
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AuthenticatedHttpClient extends http.BaseClient {
  AuthenticatedHttpClient();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.headers.putIfAbsent('x-access-token', () => "jack");

    debugPrint("\t\x1B[36m[HEADER]: ${request.headers.toString()}\x1B[0m\n");
    return request.send();
  }

  void printRequestDebug(String type, Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    var result = "\n\t[API-REQUEST] \n"
        "\t[URI]: $type $url\n";

    result += "\t[body]: $body\n";

    if (encoding != null) {
      result += "\t[encoding]:$encoding\n";
    }
    result = result.trimRight();
    result = "\x1B[36m$result\x1B[0m";

    debugPrint(result, wrapWidth: 150);
  }

  void printDebugResponse(String type, Response response,
      {bool pretty = false}) {
    var result = "\n\t[API-RESPONSE]  [status]: ${response.statusCode}\n";

    if (response.request?.url != null) {
      result += '\t[URI]: $type ${response.request?.url}\n';
    }

    if (response.bodyBytes.isEmpty) {
      result += '\t[body]: ${null}\n';
    } else {
      if (pretty) {
        result += '\t[body]: \n';
        var jsonResult = json.decode(utf8.decode(response.bodyBytes));
        var prettyString =
            const JsonEncoder.withIndent('  ').convert(jsonResult);
        result += prettyString;
      } else {
        result +=
            '\t[body]: ${json.decode(utf8.decode(response.bodyBytes)).toString()}\n';
      }
    }

    if (response.statusCode.toString().startsWith("2")) {
      result = "\x1B[32m$result\x1B[0m";
    } else {
      result = "\x1B[31m$result\x1B[0m";
    }
    debugPrint(result);
  }

  @override
  Future<String> read(Uri url, {Map<String, String>? headers}) {
    printRequestDebug('READ', url, headers: headers);
    final response = super.read(url, headers: headers);
    return response;
  }

  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) async {
    printRequestDebug('GET', url, headers: headers);
    final response = await super.get(url, headers: headers);
    printDebugResponse('GET', response);

    return response;
  }

  @override
  Future<Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    printRequestDebug('POST', url,
        headers: headers, body: body, encoding: encoding);
    final response =
        await super.post(url, headers: headers, body: body, encoding: encoding);
    printDebugResponse('POST', response);
    return response;
  }

  @override
  Future<Response> put(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    printRequestDebug('PUT', url,
        headers: headers, body: body, encoding: encoding);
    final response =
        await super.put(url, headers: headers, body: body, encoding: encoding);
    printDebugResponse('PUT', response);
    return response;
  }

  @override
  Future<Response> patch(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    printRequestDebug('PATCH', url,
        headers: headers, body: body, encoding: encoding);
    final response = await super
        .patch(url, headers: headers, body: body, encoding: encoding);
    printDebugResponse('PATCH', response);
    return response;
  }

  @override
  Future<Response> delete(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    printRequestDebug('DELETE', url,
        headers: headers, body: body, encoding: encoding);

    final response = await super
        .delete(url, headers: headers, body: body, encoding: encoding);
    printDebugResponse('DELETE', response);
    return response;
  }
}
