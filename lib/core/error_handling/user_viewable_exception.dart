// Custom exceptions that can be displayed to the user
class UserViewableException implements Exception {
  UserViewableException({this.message, this.errors});

  final String? message;
  final Map<String, List<String>>? errors;

  @override
  String toString() {
    if (errors != null && errors!.isNotEmpty) {
      return errors!.entries.map((entry) {
        return entry.value.join(', ');
      }).join('\n');
    }
    return message ?? 'An unexpected error occurred. Please try again later.';
  }

  // ignore: prefer_constructors_over_static_methods
  static UserViewableException fromResponse(Map<String, dynamic> responseBody) {
    if (responseBody.containsKey('errors') && responseBody['errors'] is Map<String, dynamic>) {
      final errorsBody = responseBody['errors'] as Map<String, dynamic>;
      final errorsMap = <String, List<String>>{};
      errorsBody.forEach((key, value) {
        errorsMap[key] = List<String>.from(value as List<dynamic>);
      });
      return UserViewableException(errors: errorsMap);
    } else {
      return UserViewableException(message: responseBody['message']?.toString() ?? 'The given data is invalid.');
    }
  }
}
