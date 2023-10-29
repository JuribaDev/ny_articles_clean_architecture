part of 'most_viewed_article_bloc.dart';

abstract class MostViewedArticleState extends Equatable {
  const MostViewedArticleState();
}

class MostViewedArticleIsLoaded extends MostViewedArticleState {
  const MostViewedArticleIsLoaded(this.articles);

  final List<ArticleEntity> articles;

  @override
  List<Object> get props => [articles];
}

class MostViewedArticleLoading extends MostViewedArticleState {
  @override
  List<Object?> get props => [];
}

class MostViewedArticleError extends MostViewedArticleState {
  const MostViewedArticleError(this.error);

  final String error;

  @override
  List<Object?> get props => [error];
}
