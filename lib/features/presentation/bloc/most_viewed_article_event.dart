part of 'most_viewed_article_bloc.dart';

abstract class MostViewedArticleEvent extends Equatable {
  const MostViewedArticleEvent();
}

class GetMostViewedArticlesEvent extends MostViewedArticleEvent {
  const GetMostViewedArticlesEvent({this.period = 30});

  final int? period;

  @override
  List<Object?> get props => [period];
}
