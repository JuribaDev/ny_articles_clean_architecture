import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/non_user_viewable_exception.dart';
import 'package:ny_articles_clean_architecture/core/utils/response_validators.dart';

import '../../helpers/mocks.dart';

void main() {
  late MockNetworkManager mockNetworkManager;
  late MockDio mockDio;
  late MockLogger mockLogger;
  late MockResponse mockResponse;

  setUp(() {
    mockNetworkManager = MockNetworkManager();
    mockResponse = MockResponse();
    mockDio = MockDio();
    mockLogger = MockLogger();
    when(() => mockNetworkManager.dio).thenReturn(mockDio);
  });

  group('validateResponse tests', () {
    test('validateResponse should throw a DioException when the response is not a Map', () {
      // Arrange
      when(() => mockResponse.data).thenReturn('not a map');
      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
      // Act & Assert
      expect(() => validateResponse(mockResponse, mockLogger, 'status'), throwsA(isA<NonUserViewableException>()));
    });

    test('validateResponse should throw a DioException when the response does not contain the keyName', () {
      // Arrange
      when(() => mockResponse.data).thenReturn({'status': 'OK'});
      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
      // Act & Assert
      expect(
          () => validateResponse(mockResponse, mockLogger, 'nonExistentKey'), throwsA(isA<NonUserViewableException>()));
    });

    test('validateResponse should throw a DioException when the response status code is not 200', () {
      // Arrange
      when(() => mockResponse.data).thenReturn({'status': 'OK'});
      when(() => mockResponse.statusCode).thenReturn(400);
      when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
      // Act & Assert
      expect(() => validateResponse(mockResponse, mockLogger, 'status'), throwsA(isA<NonUserViewableException>()));
    });

    test('validateResponse should throw a DioException when the response status is not OK', () {
      // Arrange
      when(() => mockResponse.data).thenReturn({'status': 'error'});
      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
      // Act & Assert
      expect(() => validateResponse(mockResponse, mockLogger, 'status'), throwsA(isA<NonUserViewableException>()));
    });
  });
}
