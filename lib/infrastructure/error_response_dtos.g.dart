// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppErrorDto _$$_AppErrorDtoFromJson(Map<String, dynamic> json) =>
    _$_AppErrorDto(
      code: json['code'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      detail: json['detail'] as String?,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_AppErrorDtoToJson(_$_AppErrorDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'title': instance.title,
      'detail': instance.detail,
      'status': instance.status,
    };
