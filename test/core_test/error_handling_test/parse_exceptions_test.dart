// ...

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/parse_exceptions.dart';

import '../../helpers/mocks.dart';

void main() {
  late MockLogger mockLogger;
  const nonUserViewableExceptionMessage = 'An unexpected error occurred. Please try again later.';
  setUp(() {
    mockLogger = MockLogger();
    clearInteractions(mockLogger);
  });

  group('parseExceptions', () {
    test('should return NoInternetException when SocketException is encountered', () {
      // Arrange
      final dioException =
          DioException(error: const SocketException('Failed host lookup'), requestOptions: RequestOptions());
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), 'No internet connection.');
      verify(() => mockLogger.e('SocketException detected. Returning NoInternetException.')).called(1);
    });

    test('should return NonUserViewableException when FormatException is encountered', () {
      // Arrange
      final dioException = DioException(error: const FormatException(), requestOptions: RequestOptions());
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), 'An unexpected error occurred. Please try again later.');
      verify(() => mockLogger.e('FormatException detected. Returning FormatException.')).called(1);
    });

    test('should return BadRequest when status code is 400', () {
      // Arrange
      final dioException = DioException(
        response: Response(
          data: {'message': 'Bad request'},
          statusCode: 400,
          requestOptions: RequestOptions(),
        ),
        requestOptions: RequestOptions(),
      );
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), 'Bad request');
      verify(() => mockLogger.e('400 Bad Request. Returning BadRequest with message: Bad request.')).called(1);
    });

    test('should return UnauthorizedException when status code is 401', () {
      // Arrange
      final dioException = DioException(
        response: Response(
          data: {'message': 'Unauthorized'},
          statusCode: 401,
          requestOptions: RequestOptions(),
        ),
        requestOptions: RequestOptions(),
      );
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), 'Unauthorized');
      verify(() => mockLogger.e('401 Unauthorized. Returning UnauthorizedException.')).called(1);
    });

    test('should return ForbiddenException when status code is 403', () {
      // Arrange
      final dioException = DioException(
        response: Response(
          data: {'message': 'Forbidden'},
          statusCode: 403,
          requestOptions: RequestOptions(),
        ),
        requestOptions: RequestOptions(),
      );
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), 'Forbidden');
      verify(() => mockLogger.e('403 Forbidden. Returning ForbiddenException.')).called(1);
    });

    test('should return NotFoundException when status code is 404', () {
      // Arrange
      final dioException = DioException(
        response: Response(
          data: {'message': 'NotFound'},
          statusCode: 404,
          requestOptions: RequestOptions(),
        ),
        requestOptions: RequestOptions(),
      );
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), 'NotFound');
      verify(() => mockLogger.e('404 Not Found. Returning NotFoundException.')).called(1);
    });

    test('should return UnprocessableException when status code is 422', () {
      // Arrange
      final dioException = DioException(
        response: Response(
          data: {
            'message': 'NotFound',
            'errors': {
              'email': ['The email field is required.']
            }
          },
          statusCode: 422,
          requestOptions: RequestOptions(),
        ),
        requestOptions: RequestOptions(),
      );
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), 'The email field is required.');
      verify(() => mockLogger.e('422 Unprocessable Entity. Returning ValidationErrors.')).called(1);
    });

    test('should return Internal Server Exception when status code is 500', () {
      // Arrange
      final dioException = DioException(
        response: Response(
          data: {'message': 'Internal Server Error'},
          statusCode: 500,
          requestOptions: RequestOptions(),
        ),
        requestOptions: RequestOptions(),
      );
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), nonUserViewableExceptionMessage);
      verify(() => mockLogger.e(
              '500 Internal Server Error. Returning InternalServerError with message: ${dioException.response?.data['message']}.'))
          .called(1);
    });

    test('should return Gateway Timeout Exception when status code is 500', () {
      // Arrange
      final dioException = DioException(
        response: Response(
          data: {'message': 'Gateway Timeout'},
          statusCode: 504,
          requestOptions: RequestOptions(),
        ),
        requestOptions: RequestOptions(),
      );
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), nonUserViewableExceptionMessage);
      verify(() => mockLogger.e('504 Gateway Timeout. Returning GatewayTimeoutException.')).called(1);
    });

    test('should return NonUserViewableException for unknown status code', () {
      // Arrange
      final dioException = DioException(
        response: Response(data: {'message': 'Unknown error'}, statusCode: 999, requestOptions: RequestOptions()),
        requestOptions: RequestOptions(),
      );
      // Act
      final result = parseExceptions(dioException, mockLogger);
      // Assert
      expect(result.toString(), nonUserViewableExceptionMessage);
      verify(() => mockLogger.e('Unknown status code. Returning a generic Exception.')).called(1);
    });
  });
}
