import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/article_response_model.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';
import 'package:test/test.dart';

import '../../../../helpers/models.dart';

void main() {
  group('ArticleEntity', () {
    test('should correctly map from model to entity', () {
      // Arrange & Act
      final entity = articleResponseModelTest.toEntity();
      // Assert
      expect(entity, articleEntityTest);
      expect(entity, isA<ArticleEntity>());
    });

    test('should correctly map from entity to model', () {
      // Arrange & Act
      final result = ArticleResponseModel.fromEntity(articleEntityTest);
      // Assert
      expect(result, articleResponseModelTest);
      expect(result, isA<ArticleResponseModel>());
    });
  });
}
