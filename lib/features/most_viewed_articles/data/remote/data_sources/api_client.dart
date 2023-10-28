import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/parse_http_errors.dart';
import 'package:ny_articles_clean_architecture/core/network/network_manager.dart';

class ApiClient {
  ApiClient(this._networkManager, this.logger);

  final NetworkManager _networkManager;
  final Logger logger;

  void checkStatus(Response<dynamic> response) {
    if (response.data is! Map) {
      throw parseHttpErrors(
          DioException(requestOptions: response.requestOptions, message: 'Response is not a Map'), logger);
    }
    final body = response.data as Map<String, dynamic>;

    if (response.statusCode != 200 || body['status'] != 'OK') {
      throw parseHttpErrors(
          DioException(
            requestOptions: response.requestOptions,
          ),
          logger);
    }
  }
}
