import 'package:ny_articles_clean_architecture/core/constants/type_devs.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/failure.dart';
import 'package:ny_articles_clean_architecture/core/utils/either.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/data_sources/article_remote_data_source.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/repositories/article_repository_interface.dart';

class ArticleRepositoryImp implements ArticleRepositoryInterface {
  ArticleRepositoryImp(this.remoteDataSource);

  final ArticleRemoteDataSource remoteDataSource;

  @override
  EitherFailureOrSuccess<List<ArticleEntity>> getMostViewedArticles(int period) async {
    try {
      final entities = await remoteDataSource.getMostViewedArticle(period);
      return Right(entities.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
