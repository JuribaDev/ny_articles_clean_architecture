import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/media_meta_data_response_model.dart';
import 'package:test/test.dart';

import '../../../../../../../helpers/helpers.dart';

void main() {
  group('MediaMetaDataResponseModel', () {
    test('should correctly parse from json', () {
      // Arrange & Act
      final result = MediaMetaDataResponseModel.fromJson(mediaMetaDataResponseJsonTest);

      // Assert
      expect(result, mediaMetaDataResponseModelTest);
    });

    test('should correctly map to entity', () {
      // Arrange & Act
      final entity = mediaMetaDataResponseModelTest.toEntity();
      // Assert
      expect(entity, mediaMetaDataEntityTest);
    });

    test('should correctly map from entity', () {
      // Arrange & Act
      final result = MediaMetaDataResponseModel.fromEntity(mediaMetaDataEntityTest);
      // Assert
      expect(result, mediaMetaDataResponseModelTest);
    });
  });
}
