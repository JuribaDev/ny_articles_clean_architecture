import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/core/constants/network.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/parse_exceptions.dart';
import 'package:ny_articles_clean_architecture/core/network/network_manager.dart';
import 'package:ny_articles_clean_architecture/core/utils/parsers.dart';
import 'package:ny_articles_clean_architecture/core/utils/response_validators.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/article_response_model.dart';

class ArticleRemoteDataSource {
  ArticleRemoteDataSource(this._networkManager, this.logger);

  final NetworkManager _networkManager;
  final Logger logger;

  Future<List<ArticleResponseModel>> getMostViewedArticle(int period) async {
    try {
      final response = await _networkManager.dio.get(mostViewedArticlesEndpoint(period));
      validateResponse(response, logger, 'results');

      return parseGenericList(
        response.data['results'],
        response,
        ArticleResponseModel.fromJson,
      );
    } on DioException catch (error) {
      logger.e('DioException: ${error.message}', error: error, stackTrace: error.stackTrace);
      throw parseExceptions(error, logger);
    } catch (e, stackTrace) {
      logger.e('Unexpected error: $e', error: e, stackTrace: stackTrace);
      throw parseExceptions(e, logger);
    }
  }
}
