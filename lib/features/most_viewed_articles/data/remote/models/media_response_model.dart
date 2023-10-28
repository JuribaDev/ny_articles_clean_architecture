import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/media_meta_data_response_model.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/media_entity.dart';

part 'media_response_model.freezed.dart';
part 'media_response_model.g.dart';

@Freezed(toJson: false, fromJson: true)
@immutable
class MediaResponseModel with _$MediaResponseModel {
  const factory MediaResponseModel({
    required String type,
    required String subtype,
    required String caption,
    required String copyright,
    @JsonKey(name: 'approved_for_syndication') required int approvedForSyndication,
    @JsonKey(name: 'media-metadata', includeFromJson: true)
    required List<MediaMetaDataResponseModel> listMediaMetaDataResponseModel,
  }) = _MediaResponseModel;

  const MediaResponseModel._();

  factory MediaResponseModel.fromJson(Map<String, dynamic> json) => _$MediaResponseModelFromJson(json);

  factory MediaResponseModel.fromEntity(MediaEntity entity) => MediaResponseModel(
        type: entity.type,
        subtype: entity.subtype,
        caption: entity.caption,
        approvedForSyndication: entity.approvedForSyndication,
        copyright: entity.copyright,
        listMediaMetaDataResponseModel: entity.mediaMetadata.map(MediaMetaDataResponseModel.fromEntity).toList(),
      );

  MediaEntity toEntity() => MediaEntity(
        type: type,
        subtype: subtype,
        caption: caption,
        approvedForSyndication: approvedForSyndication,
        mediaMetadata: listMediaMetaDataResponseModel.map((MediaMetaDataResponseModel e) => e.toEntity()).toList(),
        copyright: copyright,
      );
}
