import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/media_meta_data_entity.dart';

part 'media_meta_data_response_model.freezed.dart';
part 'media_meta_data_response_model.g.dart';

@Freezed(toJson: false, fromJson: true)
@immutable
class MediaMetaDataResponseModel with _$MediaMetaDataResponseModel {
  const factory MediaMetaDataResponseModel({
    required String url,
    required String format,
    required int height,
    required int width,
  }) = _MediaMetaDataResponseModel;

  const MediaMetaDataResponseModel._();

  factory MediaMetaDataResponseModel.fromJson(Map<String, dynamic> json) => _$MediaMetaDataResponseModelFromJson(json);

  factory MediaMetaDataResponseModel.fromEntity(MediaMetadataEntity entity) => MediaMetaDataResponseModel(
        url: entity.url,
        format: entity.format,
        height: entity.height,
        width: entity.width,
      );

  @unfreezed
  MediaMetadataEntity toEntity() => MediaMetadataEntity(
        url: url,
        format: format,
        height: height,
        width: width,
      );
}
