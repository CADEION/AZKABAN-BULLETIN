import 'dart:developer';

import 'package:azkaban_bulletin/data/datasources/remote/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import 'api_exception.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstants.mainUrl);
    dio = Dio(baseOptions);
  }

  Options options = Options();

  /// GET REQUEST
  Future<Response> getRequest({
  required String path,
  bool isTokenRequired = false,
}) async {
  // Check for token if isTokenRequired is true
  if (isTokenRequired) {
    var token = await Utils.getAccessToken();
    debugPrint("Retrieved Token: $token"); // Check the token value

    if (token != null && token.isNotEmpty) {
      // Add Authorization header with token
      options.headers = baseOptions.headers
        ..addAll({"Authorization": "Bearer $token"});
    } else {
      debugPrint("No valid token found.");
      throw ApiException(message: "Authorization token is required but not found.");
    }
  }

  try {
    debugPrint("🚀============API REQUEST============🚀");
    final requestUrl = "${baseOptions.baseUrl}$path";
    debugPrint("Request Url: $requestUrl");
    debugPrint("Request Headers: ${options.headers}"); // Log request headers

    // Make the API request
    var response = await dio.get(path, options: options);

    debugPrint("🔥============API RESPONSE============🔥");
    debugPrint("Status Code: ${response.statusCode}");

    // Check response content type
    if (response.headers['content-type']?.contains('application/json') == false) {
      debugPrint("Unexpected response format: Not JSON");
      debugPrint("Response data: ${response.data}");
      throw ApiException(message: "Unexpected response format");
    }

    final dataString = response.data.toString();
    log("DATA: ${dataString.length > 300 ? dataString.substring(0, 300) : dataString}");

    return response;
  } on DioException catch (e) {
    if (e.response != null) {
      debugPrint("Error Response Data: ${e.response!.data}");
      debugPrint("Error Response Headers: ${e.response!.headers}");
      debugPrint("Error Request Options: ${e.response!.requestOptions}");
      throw ApiException(message: e.response!.statusMessage);
    } else {
      // Handle request setup errors
      debugPrint("Request Options: ${e.requestOptions}");
      debugPrint("Error Message: ${e.message}");
      throw ApiException(message: e.message);
    }
  }
}


  /// POST REQUEST
  Future<Response> postRequest(
      {required String path,
      dynamic body,
      bool isTokenRequired = false}) async {
    if (isTokenRequired == true) {
      var token = await Utils.getAccessToken();
      options.headers = baseOptions.headers
        ..addAll({"Authorization": "Bearer $token"});
    }

    try {
      debugPrint("🚀============API REQUEST============🚀");
      debugPrint("Request Url: ${baseOptions.baseUrl + path}");
      debugPrint("Body: $body");
      var response = await dio.post(path, data: body, options: options);
      debugPrint("🔥============API RESPONSE============🔥");
      debugPrint("Status Code: ${response.statusCode}");
      log("DATA: ${response.data}");
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }
}