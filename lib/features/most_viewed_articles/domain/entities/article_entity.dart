import 'package:equatable/equatable.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/media_entity.dart';

class ArticleEntity extends Equatable {
  const ArticleEntity({
    required this.uri,
    required this.url,
    required this.id,
    required this.assetId,
    required this.source,
    required this.publishedDate,
    required this.updated,
    required this.section,
    required this.subsection,
    required this.nytdsection,
    required this.adxKeywords,
    required this.byline,
    required this.type,
    required this.title,
    required this.abstract,
    required this.desFacet,
    required this.orgFacet,
    required this.perFacet,
    required this.geoFacet,
    required this.listMediaResponseModel,
    required this.etaId,
  });

  final String uri;
  final String url;
  final int id;
  final int assetId;
  final String source;
  final DateTime publishedDate;
  final DateTime updated;
  final String section;
  final String subsection;
  final String nytdsection;
  final String adxKeywords;
  final String byline;
  final String type;
  final String title;
  final String abstract;
  final List<String> desFacet;
  final List<String> orgFacet;
  final List<String> perFacet;
  final List<String> geoFacet;
  final List<MediaEntity> listMediaResponseModel;
  final int etaId;

  @override
  List<Object?> get props => [
        uri,
        url,
        id,
        assetId,
        source,
        publishedDate,
        updated,
        section,
        subsection,
        nytdsection,
        adxKeywords,
        byline,
        type,
        title,
        abstract,
        desFacet,
        orgFacet,
        perFacet,
        geoFacet,
        listMediaResponseModel,
        etaId,
      ];
}
