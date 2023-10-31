// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/media_response_model.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';

part 'article_response_model.freezed.dart';
part 'article_response_model.g.dart';

@Freezed(toJson: false, fromJson: true)
@immutable
class ArticleResponseModel with _$ArticleResponseModel {
  const factory ArticleResponseModel({
    required String uri,
    required String url,
    required int id,
    @JsonKey(name: 'asset_id') required int assetId,
    required String source,
    @JsonKey(name: 'published_date') required DateTime publishedDate,
    required DateTime updated,
    required String section,
    required String subsection,
    required String nytdsection,
    @JsonKey(name: 'adx_keywords') required String adxKeywords,
    required String byline,
    required String type,
    required String title,
    required String abstract,
    @JsonKey(name: 'des_facet') required List<String> desFacet,
    @JsonKey(name: 'org_facet') required List<String> orgFacet,
    @JsonKey(name: 'per_facet') required List<String> perFacet,
    @JsonKey(name: 'geo_facet') required List<String> geoFacet,
    @JsonKey(name: 'media', includeFromJson: true) required List<MediaResponseModel> listMediaResponseModel,
    @JsonKey(name: 'eta_id') required int etaId,
  }) = _ArticleResponseModel;

  const ArticleResponseModel._();

  factory ArticleResponseModel.fromJson(Map<String, dynamic> json) => _$ArticleResponseModelFromJson(json);

  factory ArticleResponseModel.fromEntity(ArticleEntity entity) => ArticleResponseModel(
        uri: entity.uri,
        url: entity.url,
        id: entity.id,
        assetId: entity.assetId,
        source: entity.source,
        publishedDate: entity.publishedDate,
        updated: entity.updated,
        section: entity.section,
        subsection: entity.subsection,
        nytdsection: entity.nytdsection,
        adxKeywords: entity.adxKeywords,
        byline: entity.byline,
        type: entity.type,
        title: entity.title,
        abstract: entity.abstract,
        desFacet: entity.desFacet,
        orgFacet: entity.orgFacet,
        perFacet: entity.perFacet,
        geoFacet: entity.geoFacet,
        listMediaResponseModel: entity.listMediaResponseModel.map(MediaResponseModel.fromEntity).toList(),
        etaId: entity.etaId,
      );

  ArticleEntity toEntity() => ArticleEntity(
        uri: uri,
        url: url,
        id: id,
        assetId: assetId,
        source: source,
        publishedDate: publishedDate,
        updated: updated,
        section: section,
        subsection: subsection,
        nytdsection: nytdsection,
        adxKeywords: adxKeywords,
        byline: byline,
        type: type,
        title: title,
        abstract: abstract,
        desFacet: desFacet,
        orgFacet: orgFacet,
        perFacet: perFacet,
        geoFacet: geoFacet,
        listMediaResponseModel: listMediaResponseModel.map((MediaResponseModel e) => e.toEntity()).toList(),
        etaId: etaId,
      );
}
