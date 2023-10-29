import 'package:ny_articles_clean_architecture/core/constants/typedevs.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';

abstract class ArticleRepositoryInterface {
  EitherFailureOrSuccess<List<ArticleEntity>> getMostViewedArticles();
}
