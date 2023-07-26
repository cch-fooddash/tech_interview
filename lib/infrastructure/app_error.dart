import 'package:fooddash_interview/infrastructure/error_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

@freezed
class AppError with _$AppError {
  const AppError._();

  const factory AppError({
    required int statusCode,
    required ErrorType errorType,
    required String title,
    required String detail,
    required String type,
  }) = _AppError;

  factory AppError.empty() => AppError(
        statusCode: 0,
        errorType: ErrorType.findByName(),
        title: "",
        detail: "",
        type: "",
      );
}
