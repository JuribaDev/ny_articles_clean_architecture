import 'package:equatable/equatable.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/media_meta_data_entity.dart';

class MediaEntity extends Equatable {
  const MediaEntity({
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
    required this.approvedForSyndication,
    required this.mediaMetadata,
  });

  final String type;
  final String subtype;
  final String caption;
  final String copyright;
  final int approvedForSyndication;
  final List<MediaMetadataEntity> mediaMetadata;

  @override
  List<Object?> get props => [
        type,
        subtype,
        caption,
        approvedForSyndication,
        mediaMetadata,
      ];
}
