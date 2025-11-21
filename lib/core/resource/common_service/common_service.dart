import 'package:dio/dio.dart';
import '../../constants/api_constant.dart';

import '../../data_state/data_state.dart';

class CommonService {
  final Dio _dio;

  CommonService({
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) : _dio = Dio(
         BaseOptions(
           connectTimeout: connectTimeout ?? const Duration(seconds: 200),
           receiveTimeout: receiveTimeout ?? const Duration(seconds: 200),
           queryParameters: queryParameters,
           headers: headers,
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
      }

      return DataSuccess(data: response);
    } on DioException catch (e) {
      if ((e.response?.statusCode ?? 0) == 401) {
        return UnauthenticatedDataState(error: e.response?.data?["message"]);
      }
      return DataFailed(error: e.toString());
    }
  }

  /// POST request
  Future<DataState<Response?>> post(
    String endpoint, {
    Object? data,
    Options? options,
  }) async {
    final url = ApiConstant.baseUrl + endpoint;
    try {
      final response = await _dio.post(url, data: data, options: options);
      if ((response.statusCode ?? 0) >= 200 ||
          (response.statusCode ?? 0) <= 204) {
        return DataSuccess(data: response);
      } else {
        return DataFailed(error: response.statusMessage);
      }
    } on DioException catch (e) {
      if ((e.response?.statusCode ?? 0) == 401) {
        return UnauthenticatedDataState(error: e.response?.data?["message"]);
      } else if ((e.response?.statusCode ?? 0) == 422) {
        return DataError(data: e.response, error: e.response?.statusMessage);
      } else if ((e.response?.statusCode ?? 0) == 403) {
        return DataError(data: e.response, error: e.response?.statusMessage);
      } else if ((e.response?.statusCode ?? 0) == 404) {
        return NotFoundDataState(error: e.response?.statusMessage);
      }
      return DataFailed(error: e.toString());
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
      if ((response.statusCode ?? 0) >= 200 ||
          (response.statusCode ?? 0) <= 204) {
        return DataSuccess(data: response);
      } else {
        return DataFailed(error: response.statusMessage);
      }
    } on DioException catch (e) {
      if ((e.response?.statusCode ?? 0) == 401) {
        return UnauthenticatedDataState(error: e.response?.data?["message"]);
      } else if ((e.response?.statusCode ?? 0) == 422) {
        return DataError(data: e.response, error: e.response?.statusMessage);
      } else if ((e.response?.statusCode ?? 0) == 403) {
        return DataError(data: e.response, error: e.response?.statusMessage);
      } else if ((e.response?.statusCode ?? 0) == 404) {
        return NotFoundDataState(error: e.response?.statusMessage);
      }
      return DataFailed(error: e.toString());
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
      final response = await _dio.delete(url, data: params, options: options);
      if ((response.statusCode ?? 0) >= 200 ||
          (response.statusCode ?? 0) <= 204) {
        return DataSuccess(data: response);
      } else {
        return DataFailed(error: response.statusMessage);
      }
    } on DioException catch (e) {
      if ((e.response?.statusCode ?? 0) == 401) {
        return UnauthenticatedDataState(error: e.response?.data?["message"]);
      } else if ((e.response?.statusCode ?? 0) == 422) {
        return DataError(data: e.response, error: e.response?.statusMessage);
      } else if ((e.response?.statusCode ?? 0) == 403) {
        return DataError(data: e.response, error: e.response?.statusMessage);
      } else if ((e.response?.statusCode ?? 0) == 404) {
        return NotFoundDataState(error: e.response?.statusMessage);
      } else if ((e.response?.statusCode ?? 0) == 204) {
        return DataSuccess();
      }
      return DataFailed(error: e.toString());
    }
  }
}
