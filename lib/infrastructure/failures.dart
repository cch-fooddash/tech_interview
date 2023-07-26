// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;

  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidNickname({
    required T failedValue,
  }) = InvalidNickname<T>;

  const factory ValueFailure.negativeInt({
    required T failedValue,
  }) = NegativeInt<T>;

  const factory ValueFailure.invalidRange({
    required T failedValue,
    required double min,
    required double max,
  }) = InvalidRatingRange<T>;

  const factory ValueFailure.emptyEnum({
    required T failedValue,
  }) = EmptyEnum<T>;

  const factory ValueFailure.invalidVersion({
    required T failedValue,
  }) = InvalidVersion<T>;
}
