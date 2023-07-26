// Package imports:
import 'dart:convert';
import 'dart:io';

import 'package:client_information/client_information.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fooddash_interview/infrastructure/authenticated_http_client.dart';
import 'package:fooddash_interview/infrastructure/error_response_dtos.dart';
import 'package:fooddash_interview/infrastructure/error_type.dart';
import 'package:fooddash_interview/infrastructure/platform_agent_dtos.dart';
import 'package:http/http.dart';

enum HttpMethod {
  get,
  post,
  delete,
  put,
  patch;
}

class CoreApi {
  static const defaultPageSize = 10;
  String baseUrl = "user-api.dev.fooddash.co.kr";
  String basePath = "/api/v1";
  final Map<String, String> _baseHeaders = {
    "Content-Type": "application/json; charset=utf-8"
  };
  late Future<void> Function(String waitingToken) onErrorWaiting;
  late Future<void> Function() onApprovedWaiting;

  final AuthenticatedHttpClient client;

  CoreApi({required this.client}) {
    updatePlatformAgent();
  }

  updatePlatformAgent(
      {Locale? locale, Channel channel = Channel.userApp}) async {
    ClientInformation clientInformation = await ClientInformation.fetch();
    debugPrint(
        "FLUTTER_CORE :: PLATFORM_AGENT :: ${locale?.languageCode}_${locale?.countryCode}");

    String appLocale;
    if (locale != null) {
      appLocale = "${locale.languageCode}_${locale.countryCode}";
    } else {
      appLocale = Platform.localeName;
    }

    final deviceInfoJson = json.encode(PlatformAgentDto(
      os: Platform.operatingSystem,
      osVersion: clientInformation.osVersion,
      appName: Uri.encodeComponent(clientInformation.applicationName),
      appVersion: clientInformation.applicationVersion,
      appBuildCode: clientInformation.applicationBuildCode,
      locale: appLocale,
      channel: channel.description,
    ));

    _baseHeaders["Platform-Agent"] = deviceInfoJson;
    _baseHeaders["Content-Type"] = "application/json; charset=utf-8";
    debugPrint("FLUTTER_CORE :: PLATFORM_AGENT :: $deviceInfoJson");
  }

  setBaseUrl({required String baseUrl, String? path}) {
    debugPrint("FLUTTER_CORE :: setBaseUrl :: $baseUrl  //  $path");
    this.baseUrl = baseUrl;
    basePath = path ?? "";
  }

  setOnErrorWaiting(
      Future<void> Function(String waitingToken) onErrorWaiting) async {
    this.onErrorWaiting = onErrorWaiting;
  }

  setOnApprovedWaiting(Future<void> Function() onApprovedWaiting) async {
    this.onApprovedWaiting = onApprovedWaiting;
  }

  /// access token 만료를 공통으로 처리하기 위해 만든 함수 *
  Future<Response> _requestWrapper(
      {required HttpMethod method,
      required String path,
      Map<String, dynamic>? bodyParam,
      Map<String, dynamic>? pathParams,
      Map<String, dynamic>? queryParams}) async {
    return _request(
            method: method,
            path: path,
            bodyParam: bodyParam,
            pathParams: pathParams,
            queryParams: queryParams)
        .then((response) async {
      if (response.statusCode == 200) {
        return response;
      }

      final infoJson =
          json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      final errorResponse = AppErrorDto.fromJson(infoJson).toDomain();

      if (errorResponse.errorType != ErrorType.accessTokenExpired &&
          errorResponse.errorType != ErrorType.refreshTokenInvalid &&
          !errorResponse.detail.contains("access")) {
        //FIXME : 리얼용은 toast말고 타 동작들도 수행해야함
        Fluttertoast.showToast(
            msg: errorResponse.detail,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: const Color(0xff333333),
            textColor: Colors.white,
            webPosition: "bottom",
            webBgColor: "#333333",
            fontSize: 14.0);
      }

      return response;
    });
  }

  Future<Response> _request(
      {required HttpMethod method,
      required String path,
      Map<String, dynamic>? bodyParam,
      Map<String, dynamic>? pathParams,
      Map<String, dynamic>? queryParams}) async {
    //body
    final body = json.encode(bodyParam);

    //path
    var realPath = "/api/v1$path";
    pathParams?.forEach((key, value) {
      realPath = realPath.replaceFirst("{$key}", "$value");
    });

    debugPrint("CORE :: CORE_API :: request -> $realPath // $queryParams");

    //request
    final uri = _getUri(realPath, queryParams);

    Response response;
    switch (method) {
      case HttpMethod.post:
        response = await client.post(
          uri,
          headers: _baseHeaders,
          body: body,
        );
        break;
      case HttpMethod.delete:
        response = await client.delete(
          uri,
          headers: _baseHeaders,
          body: body,
        );
        break;
      case HttpMethod.patch:
        response = await client.patch(
          uri,
          headers: _baseHeaders,
          body: body,
        );
        break;
      case HttpMethod.put:
        response = await client.put(
          uri,
          headers: _baseHeaders,
          body: body,
        );
        break;
      default:
        response = await client.get(
          uri,
          headers: _baseHeaders,
        );
        break;
    }

    return response;
  }

  Uri _getUri(String path, Map<String, dynamic>? queryParams) {
    if ((baseUrl.startsWith("localhost") ||
        baseUrl.startsWith("10.0.2.2") ||
        baseUrl.startsWith("192.168."))) {
      return Uri.http(baseUrl, path, queryParams);
    } else {
      return Uri.https(baseUrl, path, queryParams);
    }
  }

  /// EXAMPLE - GET
  Future<Response> isPreferredStore(String storeExtId) => _requestWrapper(
    method: HttpMethod.get,
    path: "/stores/{extId}/preferred",
    pathParams: {"extId": storeExtId},
  );

  /// EXAMPLE - POST
  Future<Response> createPreferredStore(String storeExtId) => _requestWrapper(
    method: HttpMethod.post,
    path: "/stores/{extId}/preferred",
    pathParams: {"extId": storeExtId},
  );

  /// EXAMPLE
  Future<Response> getHomeConfig() =>
      _requestWrapper(method: HttpMethod.get, path: "/home");

  /**
   * 여기에 작업해주세요
  */
}

