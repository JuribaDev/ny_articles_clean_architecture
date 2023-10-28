import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/article_response_model.dart';
import 'package:test/test.dart';

import '../../../../../../../helpers/helpers.dart';

void main() {
  group('ArticleResponseModel', () {
    test('should correctly parse from json', () {
      // Arrange & Act
      final result = ArticleResponseModel.fromJson(articleResponseJsonTest);
      // Assert
      expect(result, articleResponseModelTest);
    });

    test('should correctly map to entity', () {
      // Arrange & Act
      final entity = articleResponseModelTest.toEntity();
      // Assert
      expect(entity, articleEntityTest);
    });

    test('should correctly map from entity', () {
      // Arrange & Act
      final result = ArticleResponseModel.fromEntity(articleEntityTest);
      // Assert
      expect(result, articleResponseModelTest);
    });
  });
}
