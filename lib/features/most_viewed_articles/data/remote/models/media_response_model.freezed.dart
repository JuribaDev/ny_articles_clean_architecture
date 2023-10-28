// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaResponseModel _$MediaResponseModelFromJson(Map<String, dynamic> json) {
  return _MediaResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MediaResponseModel {
  String get type => throw _privateConstructorUsedError;
  String get subtype => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;
  String get copyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved_for_syndication')
  int get approvedForSyndication => throw _privateConstructorUsedError;
  @JsonKey(name: 'media-metadata', includeFromJson: true)
  List<MediaMetaDataResponseModel> get listMediaMetaDataResponseModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaResponseModelCopyWith<MediaResponseModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaResponseModelCopyWith<$Res> {
  factory $MediaResponseModelCopyWith(MediaResponseModel value, $Res Function(MediaResponseModel) then) =
      _$MediaResponseModelCopyWithImpl<$Res, MediaResponseModel>;
  @useResult
  $Res call(
      {String type,
      String subtype,
      String caption,
      String copyright,
      @JsonKey(name: 'approved_for_syndication') int approvedForSyndication,
      @JsonKey(name: 'media-metadata', includeFromJson: true)
      List<MediaMetaDataResponseModel> listMediaMetaDataResponseModel});
}

/// @nodoc
class _$MediaResponseModelCopyWithImpl<$Res, $Val extends MediaResponseModel>
    implements $MediaResponseModelCopyWith<$Res> {
  _$MediaResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? subtype = null,
    Object? caption = null,
    Object? copyright = null,
    Object? approvedForSyndication = null,
    Object? listMediaMetaDataResponseModel = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      approvedForSyndication: null == approvedForSyndication
          ? _value.approvedForSyndication
          : approvedForSyndication // ignore: cast_nullable_to_non_nullable
              as int,
      listMediaMetaDataResponseModel: null == listMediaMetaDataResponseModel
          ? _value.listMediaMetaDataResponseModel
          : listMediaMetaDataResponseModel // ignore: cast_nullable_to_non_nullable
              as List<MediaMetaDataResponseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaResponseModelImplCopyWith<$Res> implements $MediaResponseModelCopyWith<$Res> {
  factory _$$MediaResponseModelImplCopyWith(
          _$MediaResponseModelImpl value, $Res Function(_$MediaResponseModelImpl) then) =
      __$$MediaResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String subtype,
      String caption,
      String copyright,
      @JsonKey(name: 'approved_for_syndication') int approvedForSyndication,
      @JsonKey(name: 'media-metadata', includeFromJson: true)
      List<MediaMetaDataResponseModel> listMediaMetaDataResponseModel});
}

/// @nodoc
class __$$MediaResponseModelImplCopyWithImpl<$Res>
    extends _$MediaResponseModelCopyWithImpl<$Res, _$MediaResponseModelImpl>
    implements _$$MediaResponseModelImplCopyWith<$Res> {
  __$$MediaResponseModelImplCopyWithImpl(_$MediaResponseModelImpl _value, $Res Function(_$MediaResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? subtype = null,
    Object? caption = null,
    Object? copyright = null,
    Object? approvedForSyndication = null,
    Object? listMediaMetaDataResponseModel = null,
  }) {
    return _then(_$MediaResponseModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      approvedForSyndication: null == approvedForSyndication
          ? _value.approvedForSyndication
          : approvedForSyndication // ignore: cast_nullable_to_non_nullable
              as int,
      listMediaMetaDataResponseModel: null == listMediaMetaDataResponseModel
          ? _value._listMediaMetaDataResponseModel
          : listMediaMetaDataResponseModel // ignore: cast_nullable_to_non_nullable
              as List<MediaMetaDataResponseModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$MediaResponseModelImpl extends _MediaResponseModel {
  const _$MediaResponseModelImpl(
      {required this.type,
      required this.subtype,
      required this.caption,
      required this.copyright,
      @JsonKey(name: 'approved_for_syndication') required this.approvedForSyndication,
      @JsonKey(name: 'media-metadata', includeFromJson: true)
      required final List<MediaMetaDataResponseModel> listMediaMetaDataResponseModel})
      : _listMediaMetaDataResponseModel = listMediaMetaDataResponseModel,
        super._();

  factory _$MediaResponseModelImpl.fromJson(Map<String, dynamic> json) => _$$MediaResponseModelImplFromJson(json);

  @override
  final String type;
  @override
  final String subtype;
  @override
  final String caption;
  @override
  final String copyright;
  @override
  @JsonKey(name: 'approved_for_syndication')
  final int approvedForSyndication;
  final List<MediaMetaDataResponseModel> _listMediaMetaDataResponseModel;
  @override
  @JsonKey(name: 'media-metadata', includeFromJson: true)
  List<MediaMetaDataResponseModel> get listMediaMetaDataResponseModel {
    if (_listMediaMetaDataResponseModel is EqualUnmodifiableListView) return _listMediaMetaDataResponseModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMediaMetaDataResponseModel);
  }

  @override
  String toString() {
    return 'MediaResponseModel(type: $type, subtype: $subtype, caption: $caption, copyright: $copyright, approvedForSyndication: $approvedForSyndication, listMediaMetaDataResponseModel: $listMediaMetaDataResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaResponseModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.copyright, copyright) || other.copyright == copyright) &&
            (identical(other.approvedForSyndication, approvedForSyndication) ||
                other.approvedForSyndication == approvedForSyndication) &&
            const DeepCollectionEquality()
                .equals(other._listMediaMetaDataResponseModel, _listMediaMetaDataResponseModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, subtype, caption, copyright, approvedForSyndication,
      const DeepCollectionEquality().hash(_listMediaMetaDataResponseModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaResponseModelImplCopyWith<_$MediaResponseModelImpl> get copyWith =>
      __$$MediaResponseModelImplCopyWithImpl<_$MediaResponseModelImpl>(this, _$identity);
}

abstract class _MediaResponseModel extends MediaResponseModel {
  const factory _MediaResponseModel(
      {required final String type,
      required final String subtype,
      required final String caption,
      required final String copyright,
      @JsonKey(name: 'approved_for_syndication') required final int approvedForSyndication,
      @JsonKey(name: 'media-metadata', includeFromJson: true)
      required final List<MediaMetaDataResponseModel> listMediaMetaDataResponseModel}) = _$MediaResponseModelImpl;
  const _MediaResponseModel._() : super._();

  factory _MediaResponseModel.fromJson(Map<String, dynamic> json) = _$MediaResponseModelImpl.fromJson;

  @override
  String get type;
  @override
  String get subtype;
  @override
  String get caption;
  @override
  String get copyright;
  @override
  @JsonKey(name: 'approved_for_syndication')
  int get approvedForSyndication;
  @override
  @JsonKey(name: 'media-metadata', includeFromJson: true)
  List<MediaMetaDataResponseModel> get listMediaMetaDataResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$MediaResponseModelImplCopyWith<_$MediaResponseModelImpl> get copyWith => throw _privateConstructorUsedError;
}
