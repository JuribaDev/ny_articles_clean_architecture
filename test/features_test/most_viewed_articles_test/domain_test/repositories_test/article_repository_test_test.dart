import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/user_viewable_exception.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/repositories/article_repository_imp.dart';

import '../../../../helpers/mocks.dart';
import '../../../../helpers/models.dart';

void main() {
  late ArticleRepositoryImp repository;
  late MockArticleRemoteDataSource mockRemoteDataSource;

  final articleResponseModelList = [articleResponseModelTest];
  final articleEntityList = [articleEntityTest];
  const period = 7;
  setUp(() {
    mockRemoteDataSource = MockArticleRemoteDataSource();
    repository = ArticleRepositoryImp(mockRemoteDataSource);
  });

  test('should return List<ArticleEntity> when the call to remote data source is successful', () async {
    // Arrange
    when(() => mockRemoteDataSource.getMostViewedArticle(period)).thenAnswer((_) async => articleResponseModelList);

    // Act
    final result = await repository.getMostViewedArticles(period);

    // Assert
    result.fold(
      (failure) => fail('Should return Right with list of articles entities'),
      (articles) => expect(
        articles,
        equals(articleEntityList),
      ),
    );

    verify(() => mockRemoteDataSource.getMostViewedArticle(period)).called(1);
  });

  test('should return Failure when the call to remote data source is unsuccessful', () async {
    // Arrange
    final exception = UserViewableException(message: 'Something went wrong');
    when(() => mockRemoteDataSource.getMostViewedArticle(period)).thenThrow(exception);

    // Act
    final result = await repository.getMostViewedArticles(period);

    // Assert
    result.fold((failure) => expect(failure.message, equals(exception.message.toString())),
        (_) => fail('Should return Failure'));

    verify(() => mockRemoteDataSource.getMostViewedArticle(period)).called(1);
    verifyNoMoreInteractions(mockRemoteDataSource);
  });
}
