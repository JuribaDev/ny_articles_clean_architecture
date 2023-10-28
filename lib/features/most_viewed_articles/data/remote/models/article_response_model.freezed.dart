// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleResponseModel _$ArticleResponseModelFromJson(Map<String, dynamic> json) {
  return _ArticleResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleResponseModel {
  String get uri => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_id')
  int get assetId => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_date')
  DateTime get publishedDate => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  String get section => throw _privateConstructorUsedError;
  String get subsection => throw _privateConstructorUsedError;
  String get nytdsection => throw _privateConstructorUsedError;
  @JsonKey(name: 'adx_keywords')
  String get adxKeywords => throw _privateConstructorUsedError;
  String get byline => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get abstract => throw _privateConstructorUsedError;
  @JsonKey(name: 'des_facet')
  List<String> get desFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'org_facet')
  List<String> get orgFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_facet')
  List<String> get perFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'geo_facet')
  List<String> get geoFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'media', includeFromJson: true)
  List<MediaResponseModel> get listMediaResponseModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'eta_id')
  int get etaId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleResponseModelCopyWith<ArticleResponseModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleResponseModelCopyWith<$Res> {
  factory $ArticleResponseModelCopyWith(ArticleResponseModel value, $Res Function(ArticleResponseModel) then) =
      _$ArticleResponseModelCopyWithImpl<$Res, ArticleResponseModel>;
  @useResult
  $Res call(
      {String uri,
      String url,
      int id,
      @JsonKey(name: 'asset_id') int assetId,
      String source,
      @JsonKey(name: 'published_date') DateTime publishedDate,
      DateTime updated,
      String section,
      String subsection,
      String nytdsection,
      @JsonKey(name: 'adx_keywords') String adxKeywords,
      String byline,
      String type,
      String title,
      String abstract,
      @JsonKey(name: 'des_facet') List<String> desFacet,
      @JsonKey(name: 'org_facet') List<String> orgFacet,
      @JsonKey(name: 'per_facet') List<String> perFacet,
      @JsonKey(name: 'geo_facet') List<String> geoFacet,
      @JsonKey(name: 'media', includeFromJson: true) List<MediaResponseModel> listMediaResponseModel,
      @JsonKey(name: 'eta_id') int etaId});
}

/// @nodoc
class _$ArticleResponseModelCopyWithImpl<$Res, $Val extends ArticleResponseModel>
    implements $ArticleResponseModelCopyWith<$Res> {
  _$ArticleResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? url = null,
    Object? id = null,
    Object? assetId = null,
    Object? source = null,
    Object? publishedDate = null,
    Object? updated = null,
    Object? section = null,
    Object? subsection = null,
    Object? nytdsection = null,
    Object? adxKeywords = null,
    Object? byline = null,
    Object? type = null,
    Object? title = null,
    Object? abstract = null,
    Object? desFacet = null,
    Object? orgFacet = null,
    Object? perFacet = null,
    Object? geoFacet = null,
    Object? listMediaResponseModel = null,
    Object? etaId = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assetId: null == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      subsection: null == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String,
      nytdsection: null == nytdsection
          ? _value.nytdsection
          : nytdsection // ignore: cast_nullable_to_non_nullable
              as String,
      adxKeywords: null == adxKeywords
          ? _value.adxKeywords
          : adxKeywords // ignore: cast_nullable_to_non_nullable
              as String,
      byline: null == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: null == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String,
      desFacet: null == desFacet
          ? _value.desFacet
          : desFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      orgFacet: null == orgFacet
          ? _value.orgFacet
          : orgFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      perFacet: null == perFacet
          ? _value.perFacet
          : perFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      geoFacet: null == geoFacet
          ? _value.geoFacet
          : geoFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listMediaResponseModel: null == listMediaResponseModel
          ? _value.listMediaResponseModel
          : listMediaResponseModel // ignore: cast_nullable_to_non_nullable
              as List<MediaResponseModel>,
      etaId: null == etaId
          ? _value.etaId
          : etaId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleResponseModelImplCopyWith<$Res> implements $ArticleResponseModelCopyWith<$Res> {
  factory _$$ArticleResponseModelImplCopyWith(
          _$ArticleResponseModelImpl value, $Res Function(_$ArticleResponseModelImpl) then) =
      __$$ArticleResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uri,
      String url,
      int id,
      @JsonKey(name: 'asset_id') int assetId,
      String source,
      @JsonKey(name: 'published_date') DateTime publishedDate,
      DateTime updated,
      String section,
      String subsection,
      String nytdsection,
      @JsonKey(name: 'adx_keywords') String adxKeywords,
      String byline,
      String type,
      String title,
      String abstract,
      @JsonKey(name: 'des_facet') List<String> desFacet,
      @JsonKey(name: 'org_facet') List<String> orgFacet,
      @JsonKey(name: 'per_facet') List<String> perFacet,
      @JsonKey(name: 'geo_facet') List<String> geoFacet,
      @JsonKey(name: 'media', includeFromJson: true) List<MediaResponseModel> listMediaResponseModel,
      @JsonKey(name: 'eta_id') int etaId});
}

/// @nodoc
class __$$ArticleResponseModelImplCopyWithImpl<$Res>
    extends _$ArticleResponseModelCopyWithImpl<$Res, _$ArticleResponseModelImpl>
    implements _$$ArticleResponseModelImplCopyWith<$Res> {
  __$$ArticleResponseModelImplCopyWithImpl(
      _$ArticleResponseModelImpl _value, $Res Function(_$ArticleResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? url = null,
    Object? id = null,
    Object? assetId = null,
    Object? source = null,
    Object? publishedDate = null,
    Object? updated = null,
    Object? section = null,
    Object? subsection = null,
    Object? nytdsection = null,
    Object? adxKeywords = null,
    Object? byline = null,
    Object? type = null,
    Object? title = null,
    Object? abstract = null,
    Object? desFacet = null,
    Object? orgFacet = null,
    Object? perFacet = null,
    Object? geoFacet = null,
    Object? listMediaResponseModel = null,
    Object? etaId = null,
  }) {
    return _then(_$ArticleResponseModelImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assetId: null == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: null == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      subsection: null == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String,
      nytdsection: null == nytdsection
          ? _value.nytdsection
          : nytdsection // ignore: cast_nullable_to_non_nullable
              as String,
      adxKeywords: null == adxKeywords
          ? _value.adxKeywords
          : adxKeywords // ignore: cast_nullable_to_non_nullable
              as String,
      byline: null == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: null == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String,
      desFacet: null == desFacet
          ? _value._desFacet
          : desFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      orgFacet: null == orgFacet
          ? _value._orgFacet
          : orgFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      perFacet: null == perFacet
          ? _value._perFacet
          : perFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      geoFacet: null == geoFacet
          ? _value._geoFacet
          : geoFacet // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listMediaResponseModel: null == listMediaResponseModel
          ? _value._listMediaResponseModel
          : listMediaResponseModel // ignore: cast_nullable_to_non_nullable
              as List<MediaResponseModel>,
      etaId: null == etaId
          ? _value.etaId
          : etaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ArticleResponseModelImpl extends _ArticleResponseModel {
  const _$ArticleResponseModelImpl(
      {required this.uri,
      required this.url,
      required this.id,
      @JsonKey(name: 'asset_id') required this.assetId,
      required this.source,
      @JsonKey(name: 'published_date') required this.publishedDate,
      required this.updated,
      required this.section,
      required this.subsection,
      required this.nytdsection,
      @JsonKey(name: 'adx_keywords') required this.adxKeywords,
      required this.byline,
      required this.type,
      required this.title,
      required this.abstract,
      @JsonKey(name: 'des_facet') required final List<String> desFacet,
      @JsonKey(name: 'org_facet') required final List<String> orgFacet,
      @JsonKey(name: 'per_facet') required final List<String> perFacet,
      @JsonKey(name: 'geo_facet') required final List<String> geoFacet,
      @JsonKey(name: 'media', includeFromJson: true) required final List<MediaResponseModel> listMediaResponseModel,
      @JsonKey(name: 'eta_id') required this.etaId})
      : _desFacet = desFacet,
        _orgFacet = orgFacet,
        _perFacet = perFacet,
        _geoFacet = geoFacet,
        _listMediaResponseModel = listMediaResponseModel,
        super._();

  factory _$ArticleResponseModelImpl.fromJson(Map<String, dynamic> json) => _$$ArticleResponseModelImplFromJson(json);

  @override
  final String uri;
  @override
  final String url;
  @override
  final int id;
  @override
  @JsonKey(name: 'asset_id')
  final int assetId;
  @override
  final String source;
  @override
  @JsonKey(name: 'published_date')
  final DateTime publishedDate;
  @override
  final DateTime updated;
  @override
  final String section;
  @override
  final String subsection;
  @override
  final String nytdsection;
  @override
  @JsonKey(name: 'adx_keywords')
  final String adxKeywords;
  @override
  final String byline;
  @override
  final String type;
  @override
  final String title;
  @override
  final String abstract;
  final List<String> _desFacet;
  @override
  @JsonKey(name: 'des_facet')
  List<String> get desFacet {
    if (_desFacet is EqualUnmodifiableListView) return _desFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_desFacet);
  }

  final List<String> _orgFacet;
  @override
  @JsonKey(name: 'org_facet')
  List<String> get orgFacet {
    if (_orgFacet is EqualUnmodifiableListView) return _orgFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orgFacet);
  }

  final List<String> _perFacet;
  @override
  @JsonKey(name: 'per_facet')
  List<String> get perFacet {
    if (_perFacet is EqualUnmodifiableListView) return _perFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_perFacet);
  }

  final List<String> _geoFacet;
  @override
  @JsonKey(name: 'geo_facet')
  List<String> get geoFacet {
    if (_geoFacet is EqualUnmodifiableListView) return _geoFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_geoFacet);
  }

  final List<MediaResponseModel> _listMediaResponseModel;
  @override
  @JsonKey(name: 'media', includeFromJson: true)
  List<MediaResponseModel> get listMediaResponseModel {
    if (_listMediaResponseModel is EqualUnmodifiableListView) return _listMediaResponseModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMediaResponseModel);
  }

  @override
  @JsonKey(name: 'eta_id')
  final int etaId;

  @override
  String toString() {
    return 'ArticleResponseModel(uri: $uri, url: $url, id: $id, assetId: $assetId, source: $source, publishedDate: $publishedDate, updated: $updated, section: $section, subsection: $subsection, nytdsection: $nytdsection, adxKeywords: $adxKeywords, byline: $byline, type: $type, title: $title, abstract: $abstract, desFacet: $desFacet, orgFacet: $orgFacet, perFacet: $perFacet, geoFacet: $geoFacet, listMediaResponseModel: $listMediaResponseModel, etaId: $etaId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleResponseModelImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assetId, assetId) || other.assetId == assetId) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.subsection, subsection) || other.subsection == subsection) &&
            (identical(other.nytdsection, nytdsection) || other.nytdsection == nytdsection) &&
            (identical(other.adxKeywords, adxKeywords) || other.adxKeywords == adxKeywords) &&
            (identical(other.byline, byline) || other.byline == byline) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) || other.abstract == abstract) &&
            const DeepCollectionEquality().equals(other._desFacet, _desFacet) &&
            const DeepCollectionEquality().equals(other._orgFacet, _orgFacet) &&
            const DeepCollectionEquality().equals(other._perFacet, _perFacet) &&
            const DeepCollectionEquality().equals(other._geoFacet, _geoFacet) &&
            const DeepCollectionEquality().equals(other._listMediaResponseModel, _listMediaResponseModel) &&
            (identical(other.etaId, etaId) || other.etaId == etaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
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
        const DeepCollectionEquality().hash(_desFacet),
        const DeepCollectionEquality().hash(_orgFacet),
        const DeepCollectionEquality().hash(_perFacet),
        const DeepCollectionEquality().hash(_geoFacet),
        const DeepCollectionEquality().hash(_listMediaResponseModel),
        etaId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleResponseModelImplCopyWith<_$ArticleResponseModelImpl> get copyWith =>
      __$$ArticleResponseModelImplCopyWithImpl<_$ArticleResponseModelImpl>(this, _$identity);
}

abstract class _ArticleResponseModel extends ArticleResponseModel {
  const factory _ArticleResponseModel(
      {required final String uri,
      required final String url,
      required final int id,
      @JsonKey(name: 'asset_id') required final int assetId,
      required final String source,
      @JsonKey(name: 'published_date') required final DateTime publishedDate,
      required final DateTime updated,
      required final String section,
      required final String subsection,
      required final String nytdsection,
      @JsonKey(name: 'adx_keywords') required final String adxKeywords,
      required final String byline,
      required final String type,
      required final String title,
      required final String abstract,
      @JsonKey(name: 'des_facet') required final List<String> desFacet,
      @JsonKey(name: 'org_facet') required final List<String> orgFacet,
      @JsonKey(name: 'per_facet') required final List<String> perFacet,
      @JsonKey(name: 'geo_facet') required final List<String> geoFacet,
      @JsonKey(name: 'media', includeFromJson: true) required final List<MediaResponseModel> listMediaResponseModel,
      @JsonKey(name: 'eta_id') required final int etaId}) = _$ArticleResponseModelImpl;
  const _ArticleResponseModel._() : super._();

  factory _ArticleResponseModel.fromJson(Map<String, dynamic> json) = _$ArticleResponseModelImpl.fromJson;

  @override
  String get uri;
  @override
  String get url;
  @override
  int get id;
  @override
  @JsonKey(name: 'asset_id')
  int get assetId;
  @override
  String get source;
  @override
  @JsonKey(name: 'published_date')
  DateTime get publishedDate;
  @override
  DateTime get updated;
  @override
  String get section;
  @override
  String get subsection;
  @override
  String get nytdsection;
  @override
  @JsonKey(name: 'adx_keywords')
  String get adxKeywords;
  @override
  String get byline;
  @override
  String get type;
  @override
  String get title;
  @override
  String get abstract;
  @override
  @JsonKey(name: 'des_facet')
  List<String> get desFacet;
  @override
  @JsonKey(name: 'org_facet')
  List<String> get orgFacet;
  @override
  @JsonKey(name: 'per_facet')
  List<String> get perFacet;
  @override
  @JsonKey(name: 'geo_facet')
  List<String> get geoFacet;
  @override
  @JsonKey(name: 'media', includeFromJson: true)
  List<MediaResponseModel> get listMediaResponseModel;
  @override
  @JsonKey(name: 'eta_id')
  int get etaId;
  @override
  @JsonKey(ignore: true)
  _$$ArticleResponseModelImplCopyWith<_$ArticleResponseModelImpl> get copyWith => throw _privateConstructorUsedError;
}
