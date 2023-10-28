import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/media_meta_data_response_model.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/media_meta_data_entity.dart';
import 'package:test/test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('MediaMetaDataEntity', () {
    test('should correctly map from model to entity', () {
      // Arrange & Act
      final entity = mediaMetaDataResponseModelTest.toEntity();
      // Assert
      expect(entity, mediaMetaDataEntityTest);
      expect(entity, isA<MediaMetadataEntity>());
    });

    test('should correctly map from entity to model', () {
      // Arrange & Act
      final result = MediaMetaDataResponseModel.fromEntity(mediaMetaDataEntityTest);
      // Assert
      expect(result, mediaMetaDataResponseModelTest);
      expect(result, isA<MediaMetaDataResponseModel>());
    });
  });
}
