import 'package:ny_articles_clean_architecture/core/constants/type_devs.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';

// ignore: one_member_abstracts
abstract class ArticleRepositoryInterface {
  EitherFailureOrSuccess<List<ArticleEntity>> getMostViewedArticles(int period);
}
