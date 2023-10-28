import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/media_response_model.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/media_entity.dart';
import 'package:test/test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('MediaEntity', () {
    test('should correctly map from model to entity', () {
      // Arrange & Act
      final entity = mediaResponseModelTest.toEntity();
      // Assert
      expect(entity, mediaEntityTest);
      expect(entity, isA<MediaEntity>());
    });

    test('should correctly map from entity to model', () {
      // Arrange & Act
      final result = MediaResponseModel.fromEntity(mediaEntityTest);
      // Assert
      expect(result, mediaResponseModelTest);
      expect(result, isA<MediaResponseModel>());
    });
  });
}
