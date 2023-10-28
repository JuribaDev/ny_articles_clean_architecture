// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaResponseModelImpl _$$MediaResponseModelImplFromJson(Map<String, dynamic> json) => _$MediaResponseModelImpl(
      type: json['type'] as String,
      subtype: json['subtype'] as String,
      caption: json['caption'] as String,
      copyright: json['copyright'] as String,
      approvedForSyndication: json['approved_for_syndication'] as int,
      listMediaMetaDataResponseModel: (json['media-metadata'] as List<dynamic>)
          .map((e) => MediaMetaDataResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
