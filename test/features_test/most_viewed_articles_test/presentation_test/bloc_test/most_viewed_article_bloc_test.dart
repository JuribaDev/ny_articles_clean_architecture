import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/failure.dart';
import 'package:ny_articles_clean_architecture/core/utils/either.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';
import 'package:test/test.dart';

import '../../../../helpers/helpers.dart';
import '../../../../helpers/mocks.dart';

void main() {
  late MockGetMostViewedArticlesUseCase getMostViewedArticlesUseCase;
  late MostViewedArticleBloc bloc;

  setUp(() {
    getMostViewedArticlesUseCase = MockGetMostViewedArticlesUseCase();
    bloc = MostViewedArticleBloc(getMostViewedArticlesUseCase);
  });

  test('Initial state of MostViewedArticleBloc is MostViewedArticleLoadingState', () {
    expect(bloc.state, MostViewedArticleLoadingState());
  });

  blocTest<MostViewedArticleBloc, MostViewedArticleState>(
    'emits [MostViewedArticleIsLoadedState] when getMostViewedArticlesUseCase event returns a valid list of articles',
    build: () {
      when(() => getMostViewedArticlesUseCase.call(any())).thenAnswer(
        (_) async => Right([articleEntityTest]),
      );
      return bloc;
    },
    act: (bloc) => bloc.add(const GetMostViewedArticlesEvent(period: 1)),
    expect: () => [
      MostViewedArticleIsLoadedState([articleEntityTest])
    ],
  );

  blocTest<MostViewedArticleBloc, MostViewedArticleState>(
    'emits [MostViewedArticleErrorState] when getMostViewedArticlesUseCase event returns a failure',
    build: () {
      when(() => getMostViewedArticlesUseCase(any())).thenAnswer(
        (_) async => Left(
          Failure(
            message: 'An error occurred',
          ),
        ),
      );
      return bloc;
    },
    act: (bloc) => bloc.add(const GetMostViewedArticlesEvent(period: 1)),
    expect: () => [
      const MostViewedArticleErrorState('An error occurred'),
    ],
  );
}
