// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_agent_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlatformAgentDto _$$_PlatformAgentDtoFromJson(Map<String, dynamic> json) =>
    _$_PlatformAgentDto(
      os: json['os'] as String,
      osVersion: json['osVersion'] as String,
      appName: json['appName'] as String,
      appVersion: json['appVersion'] as String,
      appBuildCode: json['appBuildCode'] as String,
      locale: json['locale'] as String,
      channel: json['channel'] as String,
    );

Map<String, dynamic> _$$_PlatformAgentDtoToJson(_$_PlatformAgentDto instance) =>
    <String, dynamic>{
      'os': instance.os,
      'osVersion': instance.osVersion,
      'appName': instance.appName,
      'appVersion': instance.appVersion,
      'appBuildCode': instance.appBuildCode,
      'locale': instance.locale,
      'channel': instance.channel,
    };
