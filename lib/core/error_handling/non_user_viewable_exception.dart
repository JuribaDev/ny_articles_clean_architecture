// Custom exception that should NOT be displayed to the user
class NonUserViewableException implements Exception {
  final String message = 'An unexpected error occurred. Please try again later.';

  @override
  String toString() {
    return message;
  }
}
