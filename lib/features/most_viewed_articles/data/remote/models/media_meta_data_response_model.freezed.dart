// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_meta_data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaMetaDataResponseModel _$MediaMetaDataResponseModelFromJson(Map<String, dynamic> json) {
  return _MediaMetaDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MediaMetaDataResponseModel {
  String get url => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaMetaDataResponseModelCopyWith<MediaMetaDataResponseModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaMetaDataResponseModelCopyWith<$Res> {
  factory $MediaMetaDataResponseModelCopyWith(
          MediaMetaDataResponseModel value, $Res Function(MediaMetaDataResponseModel) then) =
      _$MediaMetaDataResponseModelCopyWithImpl<$Res, MediaMetaDataResponseModel>;
  @useResult
  $Res call({String url, String format, int height, int width});
}

/// @nodoc
class _$MediaMetaDataResponseModelCopyWithImpl<$Res, $Val extends MediaMetaDataResponseModel>
    implements $MediaMetaDataResponseModelCopyWith<$Res> {
  _$MediaMetaDataResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? format = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaMetaDataResponseModelImplCopyWith<$Res> implements $MediaMetaDataResponseModelCopyWith<$Res> {
  factory _$$MediaMetaDataResponseModelImplCopyWith(
          _$MediaMetaDataResponseModelImpl value, $Res Function(_$MediaMetaDataResponseModelImpl) then) =
      __$$MediaMetaDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String format, int height, int width});
}

/// @nodoc
class __$$MediaMetaDataResponseModelImplCopyWithImpl<$Res>
    extends _$MediaMetaDataResponseModelCopyWithImpl<$Res, _$MediaMetaDataResponseModelImpl>
    implements _$$MediaMetaDataResponseModelImplCopyWith<$Res> {
  __$$MediaMetaDataResponseModelImplCopyWithImpl(
      _$MediaMetaDataResponseModelImpl _value, $Res Function(_$MediaMetaDataResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? format = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$MediaMetaDataResponseModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$MediaMetaDataResponseModelImpl extends _MediaMetaDataResponseModel {
  const _$MediaMetaDataResponseModelImpl(
      {required this.url, required this.format, required this.height, required this.width})
      : super._();

  factory _$MediaMetaDataResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaMetaDataResponseModelImplFromJson(json);

  @override
  final String url;
  @override
  final String format;
  @override
  final int height;
  @override
  final int width;

  @override
  String toString() {
    return 'MediaMetaDataResponseModel(url: $url, format: $format, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaMetaDataResponseModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, format, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaMetaDataResponseModelImplCopyWith<_$MediaMetaDataResponseModelImpl> get copyWith =>
      __$$MediaMetaDataResponseModelImplCopyWithImpl<_$MediaMetaDataResponseModelImpl>(this, _$identity);
}

abstract class _MediaMetaDataResponseModel extends MediaMetaDataResponseModel {
  const factory _MediaMetaDataResponseModel(
      {required final String url,
      required final String format,
      required final int height,
      required final int width}) = _$MediaMetaDataResponseModelImpl;
  const _MediaMetaDataResponseModel._() : super._();

  factory _MediaMetaDataResponseModel.fromJson(Map<String, dynamic> json) = _$MediaMetaDataResponseModelImpl.fromJson;

  @override
  String get url;
  @override
  String get format;
  @override
  int get height;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$MediaMetaDataResponseModelImplCopyWith<_$MediaMetaDataResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
