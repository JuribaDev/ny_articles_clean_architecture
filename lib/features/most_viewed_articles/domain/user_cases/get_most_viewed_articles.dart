import 'package:ny_articles_clean_architecture/core/constants/type_devs.dart';
import 'package:ny_articles_clean_architecture/core/use_case/user_case.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/repositories/article_repository_interface.dart';

class GetMostViewedArticlesUseCase implements UseCase<List<ArticleEntity>, int> {
  GetMostViewedArticlesUseCase(this.articleRepositoryInterface);

  final ArticleRepositoryInterface articleRepositoryInterface;

  @override
  EitherFailureOrSuccess<List<ArticleEntity>> call(int params) {
    return articleRepositoryInterface.getMostViewedArticles(params);
  }
}
