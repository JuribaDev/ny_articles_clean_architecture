import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

Exception parseHttpErrors(DioException error, Logger logger) {
  logger.i('Parsing DioException to determine the proper HttpError.');

  if (error.response == null) {
    logger.w('DioException contains a null response, inspecting the inner error.');

    if (error.error is SocketException) {
      logger.e('SocketException detected. Returning NoInternetException.');
      return NoInternetException();
    }

    if (error.error is FormatException) {
      logger.e('FormatException detected. Returning FormatException.');
      return FormatException();
    }

    logger.e('Unknown error occurred. Re-throwing original DioException.');
    throw error;
  }

  final response = error.response!;
  final body = response.data as Map<String, dynamic>;

  logger.i('Response status code: ${response.statusCode}. Processing...');

  switch (response.statusCode) {
    case 400:
      logger.e('400 Bad Request. Returning BadRequest with message: ${body['message']}.');
      return BadRequest(error: body['message'].toString());
    case 401:
      logger.e('401 Unauthorized. Returning UnauthorizedException.');
      return UnauthorizedException();
    case 403:
      logger.e('403 Forbidden. Returning ForbiddenException.');
      return ForbiddenException();
    case 404:
      logger.e('404 Not Found. Returning NotFoundError.');
      return NotFoundError();
    case 422:
      logger.e('422 Unprocessable Entity. Returning ValidationErrors.');
      return ValidationErrors.fromJson(body);
    case 500:
      logger.e('500 Internal Server Error. Returning InternalServerError with message: ${body['message']}.');
      return InternalServerError(body['message'].toString());
    case 504:
      logger.e('504 Gateway Timeout. Returning GatewayTimeoutException.');
      return GatewayTimeoutException();
    default:
      logger.e('Unknown status code. Returning a generic Exception.');
      return Exception('Unknown error occurred');
  }
}

abstract class AllHttpException implements Exception {
  String message();
}

class UnauthorizedException extends AllHttpException {
  @override
  String message() => 'Unauthorized';
}

class ForbiddenException extends AllHttpException {
  @override
  String message() => 'Forbidden';
}

class NoInternetException extends AllHttpException {
  @override
  String message() => 'No Internet';
}

class FormatException extends AllHttpException {
  @override
  String message() => 'Format Exception';
}

class NotFoundError extends AllHttpException {
  @override
  String message() => 'Not Found';
}

class BadRequest extends AllHttpException {
  BadRequest({required this.error});

  final String error;

  @override
  String message() => error;
}

class ValidationErrors extends AllHttpException {
  ValidationErrors({required this.error, required this.errors});

  factory ValidationErrors.fromJson(Map<String, dynamic> json) {
    final errors = (json['errors'] as Map<String, dynamic>)
        .map((key, value) => MapEntry(key, (value as List).map((e) => e as String).toList()));

    return ValidationErrors(
      error: json['message'].toString(),
      errors: errors,
    );
  }

  final String error;
  final Map<String, List<String>> errors;

  @override
  String message() => error;
}

class InternalServerError extends AllHttpException {
  InternalServerError(this.error);

  final String error;

  @override
  String message() => error;
}

class GatewayTimeoutException extends AllHttpException {
  @override
  String message() => 'Gateway Timeout';
}
