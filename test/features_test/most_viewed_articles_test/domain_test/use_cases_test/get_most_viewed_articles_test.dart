import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/failure.dart';
import 'package:ny_articles_clean_architecture/core/utils/either.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/user_cases/get_most_viewed_articles.dart';

import '../../../../helpers/mocks.dart';
import '../../../../helpers/models.dart';

void main() {
  late GetMostViewedArticlesUseCase useCase;
  late MockArticleRepositoryInterface mockArticleRepositoryInterface;

  final articleEntityList = [articleEntityTest];
  const period = 7;

  setUp(() {
    mockArticleRepositoryInterface = MockArticleRepositoryInterface();
    useCase = GetMostViewedArticlesUseCase(mockArticleRepositoryInterface);
  });

  test('should get articles from the repository', () async {
    // Arrange
    when(() => mockArticleRepositoryInterface.getMostViewedArticles(period))
        .thenAnswer((_) async => Right(articleEntityList));

    // Act
    final result = await useCase.call(params: period);

    // Assert
    result.fold(
      (failure) => fail('Should return Right with list of articles entities'),
      (articles) => expect(articles, equals(articleEntityList)),
    );

    verify(() => mockArticleRepositoryInterface.getMostViewedArticles(period)).called(1);
  });

  test('should return Failure when the call to the repository is unsuccessful', () async {
    // Arrange
    when(() => mockArticleRepositoryInterface.getMostViewedArticles(period))
        .thenAnswer((_) async => Left(Failure(message: 'Something went wrong')));

    // Act
    final result = await useCase.call(params: period);

    // Assert
    result.fold(
      (failure) => expect(failure.message, equals('Something went wrong')),
      (_) => fail('Should return Failure'),
    );

    verify(() => mockArticleRepositoryInterface.getMostViewedArticles(period)).called(1);
    verifyNoMoreInteractions(mockArticleRepositoryInterface);
  });
}
