import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/failure.dart';

void main() {
  group('Failure', () {
    const testMessage = 'Test failure message';

    test('should instantiate correctly with provided message', () {
      // Arrange & Act
      final failure = Failure(message: testMessage);

      // Assert
      expect(failure.message, testMessage);
    });

    test('should throw when accessed via toString', () {
      // Arrange
      final failure = Failure(message: testMessage);

      // Act & Assert
      expect(failure.toString(), contains(testMessage));
    });
  });
}
