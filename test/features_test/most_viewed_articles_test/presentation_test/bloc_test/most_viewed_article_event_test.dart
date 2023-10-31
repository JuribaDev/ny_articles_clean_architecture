import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('GetMostViewedArticlesEvent', () {
    test('is equal if the period is the same', () {
      expect(
        const GetMostViewedArticlesEvent(period: 7),
        const GetMostViewedArticlesEvent(period: 7),
      );
    });

    test('is not equal if the period is different', () {
      expect(
        const GetMostViewedArticlesEvent(period: 7),
        isNot(const GetMostViewedArticlesEvent()),
      );
    });
  });
  group('SearchMostViewedArticlesEvent', () {
    test('is equal if the params are the same', () {
      expect(
        SearchMostViewedArticlesEvent('query', [articleEntityTest]),
        SearchMostViewedArticlesEvent('query', [articleEntityTest]),
      );
    });

    test('is not equal if the prams are different', () {
      expect(
        SearchMostViewedArticlesEvent('query', [articleEntityTest]),
        isNot(const SearchMostViewedArticlesEvent('', [])),
      );
    });
  });
}
