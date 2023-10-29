import 'package:ny_articles_clean_architecture/core/error_handling/user_viewable_exception.dart';
import 'package:test/test.dart';

void main() {
  group('UserViewableException', () {
    test('toString() should return message when no errors are present', () {
      // Arrange & Act
      final exception = UserViewableException(message: 'Some message');
      // Assert
      expect(exception.toString(), 'Some message');
    });

    test('toString() should return formatted errors when errors are present', () {
      // Arrange
      final errors = {
        'email': ['Email is invalid'],
        'password': ['Password is too short', 'Password is weak']
      };
      // Act
      final exception = UserViewableException(errors: errors);
      // Assert
      expect(exception.toString(), 'Email is invalid\nPassword is too short, Password is weak');
    });

    test('toString() should return default message when neither message nor errors are present', () {
      // Arrange & Act
      final exception = UserViewableException();
      // Assert
      expect(exception.toString(), 'An unexpected error occurred. Please try again later.');
    });

    test('fromResponse() should correctly extract errors from response body', () {
      // Arrange
      final responseBody = {
        'status': 'error',
        'message': 'Some validation errors occurred',
        'errors': {
          'email': ['Email is already taken'],
          'username': ['Username is too short']
        }
      };
      // Act
      final exception = UserViewableException.fromResponse(responseBody);
      // Assert
      expect(exception.toString(), 'Email is already taken\nUsername is too short');
    });

    test('fromResponse() should correctly extract message from response body', () {
      // Arrange
      final responseBody = {'status': 'error', 'message': 'Invalid input'};
      // Act
      final exception = UserViewableException.fromResponse(responseBody);
      // Assert
      expect(exception.toString(), 'Invalid input');
    });

    test('fromResponse() should return default message if neither errors nor message exist in response body', () {
      // Arrange
      final responseBody = {
        'status': 'error',
      };
      // Act
      final exception = UserViewableException.fromResponse(responseBody);
      // Assert
      expect(exception.toString(), 'The given data is invalid.');
    });
  });
}
