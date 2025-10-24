import 'package:dio/dio.dart';
import 'package:hosta_provider/core/constants/api_constant.dart';

import 'dart:convert';

import '../../data_state/data_state.dart';

class CommonService {
  final Dio _dio;

  CommonService({Duration? connectTimeout, Duration? receiveTimeout})
    : _dio = Dio(
        BaseOptions(
          connectTimeout: connectTimeout ?? const Duration(seconds: 200),
          receiveTimeout: receiveTimeout ?? const Duration(seconds: 200),
        ),
      );

  /// GET request
  Future<DataState<Response?>> get(
    String endpoint, {
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    final url = ApiConstant.baseUrl + endpoint;
    try {
      final response = await _dio.get(
        url,
        queryParameters: params,
        options: options,
      );
      if (response.statusCode == 204) {
        return DataSuccess(data: null);
      } else if (response.statusCode == 401) {
        return DataError(error: "Unauthorized");
      }

      return DataSuccess(data: response);
    } catch (e) {
      return DataError(error: e.toString());
    }
  }

  /// POST request
  Future<DataState<Response?>> post(
    String endpoint, {
    Map<String, dynamic>? data,
    Options? options,
  }) async {
    final url = ApiConstant.baseUrl + endpoint;
    try {
      final response = await _dio.post(url, data: data, options: options);
      return DataSuccess(data: response);
    } catch (e) {
      return DataError(error: e.toString());
    }
  }

  /// PUT request
  Future<DataState<Response?>> put(
    String endpoint, {
    Map<String, dynamic>? data,
    Options? options,
  }) async {
    final url = ApiConstant.baseUrl + endpoint;
    try {
      final response = await _dio.put(url, data: data, options: options);
      return DataSuccess(data: response);
    } catch (e) {
      return DataError(error: e.toString());
    }
  }

  /// DELETE request
  Future<DataState<Response?>> delete(
    String endpoint, {
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    final url = ApiConstant.baseUrl + endpoint;
    try {
      final response = await _dio.delete(
        url,
        queryParameters: params,
        options: options,
      );
      return DataSuccess(data: response);
    } catch (e) {
      return DataError(error: e.toString());
    }
  }
}
