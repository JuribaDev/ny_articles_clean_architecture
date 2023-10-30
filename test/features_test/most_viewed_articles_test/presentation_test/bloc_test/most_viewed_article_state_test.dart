import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('MostViewedArticleState', () {
    test('MostViewedArticleIsLoaded is equal if the articles are the same', () {
      final articles = [articleEntityTest];
      expect(
        MostViewedArticleIsLoadedState(articles),
        MostViewedArticleIsLoadedState(articles),
      );
    });

    test('MostViewedArticleIsLoadedState is not equal if the articles are different', () {
      final articles1 = [articleEntityTest, articleEntityTest];

      final articles2 = [articleEntityTest];
      expect(
        MostViewedArticleIsLoadedState(articles1),
        isNot(MostViewedArticleIsLoadedState(articles2)),
      );
    });

    test('MostViewedArticleLoading is always equal to another MostViewedArticleLoading', () {
      expect(
        MostViewedArticleLoadingState(),
        MostViewedArticleLoadingState(),
      );
    });

    test('MostViewedArticleError is equal if the error strings are the same', () {
      expect(
        const MostViewedArticleErrorState('Error occurred'),
        const MostViewedArticleErrorState('Error occurred'),
      );
    });

    test('MostViewedArticleError is not equal if the error strings are different', () {
      expect(
        const MostViewedArticleErrorState('Error occurred'),
        isNot(const MostViewedArticleErrorState('Different error')),
      );
    });
  });
}
