import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';

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
        isNot(const GetMostViewedArticlesEvent(period: 30)),
      );
    });

    test('uses 30 as default period value and is equal to explicitly set 30', () {
      expect(
        const GetMostViewedArticlesEvent(),
        const GetMostViewedArticlesEvent(period: 30),
      );
    });
  });
}
