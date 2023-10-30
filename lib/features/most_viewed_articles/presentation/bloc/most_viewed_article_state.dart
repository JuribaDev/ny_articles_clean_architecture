part of 'most_viewed_article_bloc.dart';

abstract class MostViewedArticleState extends Equatable {
  const MostViewedArticleState();
}

class MostViewedArticleIsLoadedState extends MostViewedArticleState {
  const MostViewedArticleIsLoadedState(this.articles);

  final List<ArticleEntity> articles;

  @override
  List<Object> get props => [articles];
}

class MostViewedArticleLoadingState extends MostViewedArticleState {
  @override
  List<Object?> get props => [];
}

class MostViewedArticleErrorState extends MostViewedArticleState {
  const MostViewedArticleErrorState(this.error);

  final String error;

  @override
  List<Object?> get props => [error];
}
