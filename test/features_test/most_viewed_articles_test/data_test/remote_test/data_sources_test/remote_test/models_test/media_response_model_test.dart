import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/media_response_model.dart';
import 'package:test/test.dart';

import '../../../../../../../helpers/helpers.dart';

void main() {
  group('MediaResponseModel', () {
    test('should correctly parse from json', () {
      // Arrange & Act
      final result = MediaResponseModel.fromJson(mediaResponseJsonTest);
      // Assert
      expect(result, mediaResponseModelTest);
    });

    test('should correctly map to entity', () {
      // Arrange & Act
      final entity = mediaResponseModelTest.toEntity();
      // Assert
      expect(entity, mediaEntityTest);
    });

    test('should correctly map from entity', () {
      // Arrange & Act
      final result = MediaResponseModel.fromEntity(mediaEntityTest);
      // Assert
      expect(result, mediaResponseModelTest);
    });
  });
}
