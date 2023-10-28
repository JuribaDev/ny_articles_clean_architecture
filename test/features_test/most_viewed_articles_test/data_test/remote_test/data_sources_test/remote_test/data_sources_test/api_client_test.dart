// ignore_for_file: inference_failure_on_function_invocation

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/data_sources/api_client.dart';

import '../../../../../../../helpers/mocks.dart';

void main() {
  late ApiClient apiClient;
  late MockNetworkManager mockNetworkManager;
  late MockDio mockDio;
  late MockLogger mockLogger;
  late MockResponse mockResponse;
  final dioException = DioException(requestOptions: RequestOptions());

  setUp(() {
    mockNetworkManager = MockNetworkManager();
    mockResponse = MockResponse();
    mockDio = MockDio();
    mockLogger = MockLogger();
    when(() => mockNetworkManager.dio).thenReturn(mockDio);
    apiClient = ApiClient(mockNetworkManager, mockLogger);
  });

  group('ApiClient tests', () {
    group('CheckStatus tests', () {
      test('checkStatus should throw an DioException when the response is not a Map', () {
        // Arrange
        when(() => mockResponse.data).thenReturn('not a map');
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
        // Act & Assert
        expect(() => apiClient.checkStatus(mockResponse), throwsA(isA<DioException>()));
      });
      test('checkStatus should throw an DioException when the response status code is not 200', () {
        // Arrange
        when(() => mockResponse.data).thenReturn({'status': 'success'});
        when(() => mockResponse.statusCode).thenReturn(400);
        when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
        // Act & Assert
        expect(() => apiClient.checkStatus(mockResponse), throwsA(isA<DioException>()));
      });
      test('checkStatus should throw an DioException when the response status is not success', () {
        // Arrange
        when(() => mockResponse.data).thenReturn({'status': 'error'});
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
        // Act & Assert
        expect(() => apiClient.checkStatus(mockResponse), throwsA(isA<DioException>()));
      });
    });
  });
}
