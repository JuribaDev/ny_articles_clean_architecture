import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/user_cases/get_most_viewed_articles.dart';

part 'most_viewed_article_event.dart';
part 'most_viewed_article_state.dart';

class MostViewedArticleBloc extends Bloc<MostViewedArticleEvent, MostViewedArticleState> {
  MostViewedArticleBloc(this.getMostViewedArticlesUseCase) : super(MostViewedArticleLoadingState()) {
    on<GetMostViewedArticlesEvent>(_onGetMostViewedArticles);
  }

  final GetMostViewedArticlesUseCase getMostViewedArticlesUseCase;

  Future<void> _onGetMostViewedArticles(GetMostViewedArticlesEvent event, Emitter<MostViewedArticleState> emit) async {
    emit(MostViewedArticleLoadingState());
    final result = await getMostViewedArticlesUseCase(event.period!);
    result.fold((failure) => emit(MostViewedArticleErrorState(failure.toString())),
        (articles) => emit(MostViewedArticleIsLoadedState(articles)));
  }
}
