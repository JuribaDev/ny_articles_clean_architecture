import 'package:dio/dio.dart';

List<T> parseGenericList<T>(
  dynamic results,
  Response<dynamic> response,
  T Function(Map<String, dynamic>) fromJson,
) {
  if (results is! List) {
    throw DioException(
      requestOptions: response.requestOptions,
      message: 'Unexpected response structure',
    );
  }
  return List<T>.from(
    results.map((e) => fromJson(e as Map<String, dynamic>)),
  );
}
