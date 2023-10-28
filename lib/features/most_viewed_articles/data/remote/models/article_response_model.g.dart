// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleResponseModelImpl _$$ArticleResponseModelImplFromJson(Map<String, dynamic> json) => _$ArticleResponseModelImpl(
      uri: json['uri'] as String,
      url: json['url'] as String,
      id: json['id'] as int,
      assetId: json['asset_id'] as int,
      source: json['source'] as String,
      publishedDate: DateTime.parse(json['published_date'] as String),
      updated: DateTime.parse(json['updated'] as String),
      section: json['section'] as String,
      subsection: json['subsection'] as String,
      nytdsection: json['nytdsection'] as String,
      adxKeywords: json['adx_keywords'] as String,
      byline: json['byline'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      abstract: json['abstract'] as String,
      desFacet: (json['des_facet'] as List<dynamic>).map((e) => e as String).toList(),
      orgFacet: (json['org_facet'] as List<dynamic>).map((e) => e as String).toList(),
      perFacet: (json['per_facet'] as List<dynamic>).map((e) => e as String).toList(),
      geoFacet: (json['geo_facet'] as List<dynamic>).map((e) => e as String).toList(),
      listMediaResponseModel:
          (json['media'] as List<dynamic>).map((e) => MediaResponseModel.fromJson(e as Map<String, dynamic>)).toList(),
      etaId: json['eta_id'] as int,
    );
