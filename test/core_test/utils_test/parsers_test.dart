import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/core/utils/parsers.dart';

class MockResponse extends Mock implements Response<dynamic> {}

void main() {
  late MockResponse mockResponse;
  final requestOptions = RequestOptions(path: '/');

  setUp(() {
    mockResponse = MockResponse();
    when(() => mockResponse.requestOptions).thenReturn(requestOptions);
  });

  group('parseGenericList tests', () {
    test('should throw DioException if results is not a List', () {
      // Arrange
      const results = 'not a list';
      // Act & Assert
      expect(
        () => parseGenericList(results, mockResponse, (json) => {}),
        throwsA(isA<DioException>()),
      );
    });

    test('should return a List of generic type T when results is a List of Maps', () {
      // Arrange
      final results = [
        {'key': 'value1'},
        {'key': 'value2'},
      ];
      // Act
      final parsedList = parseGenericList<Map<String, dynamic>>(
        results,
        mockResponse,
        (json) => json,
      );
      // Assert
      expect(parsedList, isA<List<Map<String, dynamic>>>());
      expect(parsedList[0]['key'], equals('value1'));
      expect(parsedList[1]['key'], equals('value2'));
    });

    test('should execute fromJson function on each element of the list', () {
      // Arrange
      final results = [
        {'key': 'value1'},
        {'key': 'value2'},
      ];
      // Act
      final parsedList = parseGenericList<String>(
        results,
        mockResponse,
        (json) => json['key'] as String,
      );
      // Assert
      expect(parsedList, isA<List<String>>());
      expect(parsedList[0], equals('value1'));
      expect(parsedList[1], equals('value2'));
    });
  });
}
