import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/non_user_viewable_exception.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/user_viewable_exception.dart';

Exception parseExceptions(Object error, Logger logger) {
  logger.i('Parsing Exceptions to determine the proper Error.');
  if (error is! DioException) {
    logger.e('Unknown error occurred.');
    return NonUserViewableException();
  }
  if (error.response == null) {
    logger.w('DioException contains a null response, inspecting the inner error.');

    if (error.error is SocketException) {
      logger.e('SocketException detected. Returning NoInternetException.');
      return UserViewableException(message: 'No internet connection.');
    }

    if (error.error is FormatException) {
      logger.e('FormatException detected. Returning FormatException.');
      return NonUserViewableException();
    }
  }

  logger.e('Unknown error occurred. Re-throwing original DioException.');

  if (error.response == null || error.response?.data == null && error.response?.statusCode == null) {
    return NonUserViewableException();
  }

  final response = error.response;
  final body = response?.data as Map<String, dynamic>;

  logger.i('Response status code: ${response?.statusCode}. Processing...');

  switch (response?.statusCode) {
    case 400:
      logger.e('400 Bad Request. Returning BadRequest with message: ${body['message']}.');
      return UserViewableException.fromResponse(body);
    case 401:
      logger.e('401 Unauthorized. Returning UnauthorizedException.');
      return UserViewableException.fromResponse(body);
    case 403:
      logger.e('403 Forbidden. Returning ForbiddenException.');
      return UserViewableException.fromResponse(body);
    case 404:
      logger.e('404 Not Found. Returning NotFoundException.');
      return UserViewableException.fromResponse(body);
    case 422:
      logger.e('422 Unprocessable Entity. Returning ValidationErrors.');
      return UserViewableException.fromResponse(body); // Customize as needed
    case 500:
      logger.e('500 Internal Server Error. Returning InternalServerError with message: ${body['message']}.');
      return NonUserViewableException();
    case 504:
      logger.e('504 Gateway Timeout. Returning GatewayTimeoutException.');
      return NonUserViewableException();
    default:
      logger.e('Unknown status code. Returning a generic Exception.');
      return NonUserViewableException();
  }
}
