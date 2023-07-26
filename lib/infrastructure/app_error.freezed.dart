// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppError {
  int get statusCode => throw _privateConstructorUsedError;
  ErrorType get errorType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppErrorCopyWith<AppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
  @useResult
  $Res call(
      {int statusCode,
      ErrorType errorType,
      String title,
      String detail,
      String type});
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? errorType = null,
    Object? title = null,
    Object? detail = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory _$$_AppErrorCopyWith(
          _$_AppError value, $Res Function(_$_AppError) then) =
      __$$_AppErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int statusCode,
      ErrorType errorType,
      String title,
      String detail,
      String type});
}

/// @nodoc
class __$$_AppErrorCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$_AppError>
    implements _$$_AppErrorCopyWith<$Res> {
  __$$_AppErrorCopyWithImpl(
      _$_AppError _value, $Res Function(_$_AppError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? errorType = null,
    Object? title = null,
    Object? detail = null,
    Object? type = null,
  }) {
    return _then(_$_AppError(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppError extends _AppError {
  const _$_AppError(
      {required this.statusCode,
      required this.errorType,
      required this.title,
      required this.detail,
      required this.type})
      : super._();

  @override
  final int statusCode;
  @override
  final ErrorType errorType;
  @override
  final String title;
  @override
  final String detail;
  @override
  final String type;

  @override
  String toString() {
    return 'AppError(statusCode: $statusCode, errorType: $errorType, title: $title, detail: $detail, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppError &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, statusCode, errorType, title, detail, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppErrorCopyWith<_$_AppError> get copyWith =>
      __$$_AppErrorCopyWithImpl<_$_AppError>(this, _$identity);
}

abstract class _AppError extends AppError {
  const factory _AppError(
      {required final int statusCode,
      required final ErrorType errorType,
      required final String title,
      required final String detail,
      required final String type}) = _$_AppError;
  const _AppError._() : super._();

  @override
  int get statusCode;
  @override
  ErrorType get errorType;
  @override
  String get title;
  @override
  String get detail;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_AppErrorCopyWith<_$_AppError> get copyWith =>
      throw _privateConstructorUsedError;
}
