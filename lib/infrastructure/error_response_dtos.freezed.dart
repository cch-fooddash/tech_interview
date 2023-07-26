// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_response_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppErrorDto _$AppErrorDtoFromJson(Map<String, dynamic> json) {
  return _AppErrorDto.fromJson(json);
}

/// @nodoc
mixin _$AppErrorDto {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail')
  String? get detail => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppErrorDtoCopyWith<AppErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorDtoCopyWith<$Res> {
  factory $AppErrorDtoCopyWith(
          AppErrorDto value, $Res Function(AppErrorDto) then) =
      _$AppErrorDtoCopyWithImpl<$Res, AppErrorDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'detail') String? detail,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class _$AppErrorDtoCopyWithImpl<$Res, $Val extends AppErrorDto>
    implements $AppErrorDtoCopyWith<$Res> {
  _$AppErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppErrorDtoCopyWith<$Res>
    implements $AppErrorDtoCopyWith<$Res> {
  factory _$$_AppErrorDtoCopyWith(
          _$_AppErrorDto value, $Res Function(_$_AppErrorDto) then) =
      __$$_AppErrorDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'detail') String? detail,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class __$$_AppErrorDtoCopyWithImpl<$Res>
    extends _$AppErrorDtoCopyWithImpl<$Res, _$_AppErrorDto>
    implements _$$_AppErrorDtoCopyWith<$Res> {
  __$$_AppErrorDtoCopyWithImpl(
      _$_AppErrorDto _value, $Res Function(_$_AppErrorDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? status = null,
  }) {
    return _then(_$_AppErrorDto(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppErrorDto extends _AppErrorDto {
  const _$_AppErrorDto(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'detail') this.detail,
      @JsonKey(name: 'status') required this.status})
      : super._();

  factory _$_AppErrorDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppErrorDtoFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'detail')
  final String? detail;
  @override
  @JsonKey(name: 'status')
  final int status;

  @override
  String toString() {
    return 'AppErrorDto(code: $code, type: $type, title: $title, detail: $detail, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppErrorDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, type, title, detail, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppErrorDtoCopyWith<_$_AppErrorDto> get copyWith =>
      __$$_AppErrorDtoCopyWithImpl<_$_AppErrorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppErrorDtoToJson(
      this,
    );
  }
}

abstract class _AppErrorDto extends AppErrorDto {
  const factory _AppErrorDto(
      {@JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'detail') final String? detail,
      @JsonKey(name: 'status') required final int status}) = _$_AppErrorDto;
  const _AppErrorDto._() : super._();

  factory _AppErrorDto.fromJson(Map<String, dynamic> json) =
      _$_AppErrorDto.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'detail')
  String? get detail;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_AppErrorDtoCopyWith<_$_AppErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
