import 'package:fooddash_interview/infrastructure/app_error.dart';
import 'package:fooddash_interview/infrastructure/error_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response_dtos.freezed.dart';

part 'error_response_dtos.g.dart';

@freezed
class AppErrorDto with _$AppErrorDto {
  const AppErrorDto._();

  // {
  //   "title": "Not Found User Coupon.",
  //   "status": 404,
  //   "detail": "null",
  //   "code": "USER_COUPON-0001",
  //   "type": "UserCouponNotFoundException"
  // }

  const factory AppErrorDto({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'detail') String? detail,
    @JsonKey(name: 'status') required int status,
  }) = _AppErrorDto;

  AppError toDomain() {
    return AppError(
      errorType: ErrorType.findByName(name: code),
      type: type ?? "",
      title: title ?? "",
      detail: detail ?? "",
      statusCode: status,
    );
  }

  factory AppErrorDto.fromJson(Map<String, dynamic> json) =>
      _$AppErrorDtoFromJson(json);
}
