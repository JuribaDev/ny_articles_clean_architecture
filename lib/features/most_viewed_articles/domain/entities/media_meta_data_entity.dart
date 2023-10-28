import 'package:equatable/equatable.dart';

class MediaMetadataEntity extends Equatable {
  const MediaMetadataEntity({
    required this.url,
    required this.format,
    required this.height,
    required this.width,
  });

  final String url;
  final String format;
  final int height;
  final int width;

  @override
  List<Object?> get props => [
        url,
        format,
        height,
        width,
      ];
}
