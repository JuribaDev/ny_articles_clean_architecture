// ignore_for_file: inference_failure_on_collection_literal

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/core/constants/network.dart';
import 'package:ny_articles_clean_architecture/core/network/network_manager.dart';

void main() {
  late NetworkManager networkManager;

  setUp(() {
    networkManager = NetworkManager(
        dio: Dio(),
        baseUrl: 'https://www.example.com',
        retryInterceptor: RetryInterceptor(dio: Dio(), retries: retries, retryDelays: retryDelays));
  });

  test('setupDioClient() sets the base url', () {
    expect(networkManager.dio.options.baseUrl, 'https://www.example.com');
  });

  test('defaultHeaders() sets the default headers', () {
    expect(networkManager.dio.options.headers[Headers.contentTypeHeader], Headers.jsonContentType);
    expect(networkManager.dio.options.headers[Headers.acceptHeader], Headers.jsonContentType);
  });

  test('defaultInterceptors() adds the RetryInterceptor', () {
    expect(networkManager.dio.interceptors.whereType<RetryInterceptor>().length, 1);
  });

  test('defaultTimeouts() sets the default timeouts', () {
    expect(networkManager.dio.options.connectTimeout, timeout);
    expect(networkManager.dio.options.sendTimeout, timeout);
    expect(networkManager.dio.options.receiveTimeout, timeout);
  });

  test('addHeader() adds a header', () {
    networkManager.addHeader(headerKey: 'headerKey', headerValue: 'headerValue');
    expect(networkManager.dio.options.headers['headerKey'], 'headerValue');
  });

  test('removeHeader() removes a header', () {
    networkManager.removeHeader(headerKey: 'headerKey');
    expect(networkManager.dio.options.headers['headerKey'], isNull);
  });

  test('clearHeaders() clears all headers', () {
    networkManager.clearHeaders();
    expect(networkManager.dio.options.headers, {});
  });
}
