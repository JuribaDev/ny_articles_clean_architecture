import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:ny_articles_clean_architecture/core/constants/network.dart';

class NetworkManager {
  NetworkManager({required this.dio, required this.baseUrl, required this.retryInterceptor}) {
    setupDioClient();
  }

  final Dio dio;
  final String baseUrl;
  final RetryInterceptor retryInterceptor;

  void setupDioClient() {
    dio.options.baseUrl = baseUrl;
    defaultHeaders();
    defaultInterceptors();

    defaultTimeouts();
  }

  void defaultHeaders() {
    dio.options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
    dio.options.headers[Headers.acceptHeader] = Headers.jsonContentType;
  }

  void defaultInterceptors() {
    dio.interceptors.add(retryInterceptor);
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    }
  }

  void defaultTimeouts() {
    dio.options.connectTimeout = timeout;
    dio.options.sendTimeout = timeout;
    dio.options.receiveTimeout = timeout;
  }

  void addHeader({required String headerKey, required String headerValue}) {
    dio.options.headers[headerKey] = headerValue;
  }

  void removeHeader({required String headerKey}) {
    dio.options.headers.remove(headerKey);
  }

  void clearHeaders() {
    dio.options.headers.clear();
  }
}
