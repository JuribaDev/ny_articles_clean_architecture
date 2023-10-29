import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/parse_exceptions.dart';

void validateResponse(Response<dynamic> response, Logger logger, String? keyName) {
  if (response.data is! Map) {
    throw parseExceptions(const FormatException('Response is not a Map'), logger);
  }
  final body = response.data as Map<String, dynamic>;
  if (keyName != null && body[keyName] == null) {
    throw parseExceptions(FormatException('Response does not contain $keyName'), logger);
  }
  if (response.statusCode != 200 || body['status'] != 'OK') {
    throw parseExceptions(
        DioException(
          requestOptions: response.requestOptions,
        ),
        logger);
  }
}
