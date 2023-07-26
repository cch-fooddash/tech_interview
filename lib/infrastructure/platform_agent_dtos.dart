import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform_agent_dtos.freezed.dart';
part 'platform_agent_dtos.g.dart';

@freezed
class PlatformAgentDto with _$PlatformAgentDto {
  const PlatformAgentDto._();

  const factory PlatformAgentDto({
    @JsonKey(name: 'os') required String os,
    @JsonKey(name: 'osVersion') required String osVersion,
    @JsonKey(name: 'appName') required String appName,
    @JsonKey(name: 'appVersion') required String appVersion,
    @JsonKey(name: 'appBuildCode') required String appBuildCode,
    @JsonKey(name: 'locale') required String locale,
    @JsonKey(name: 'channel') required String channel,
  }) = _PlatformAgentDto;

  factory PlatformAgentDto.fromDomain(
      String os,
      String osVersion,
      String appName,
      String appVersion,
      String appBuildCode,
      String locale,
      String channel) {
    return PlatformAgentDto(
      os: os,
      osVersion: osVersion,
      appName: appName,
      appVersion: appVersion,
      appBuildCode: appBuildCode,
      locale: locale,
      channel: channel,
    );
  }

  factory PlatformAgentDto.fromJson(Map<String, dynamic> json) =>
      _$PlatformAgentDtoFromJson(json);
}

// usecase : final enum = Channel.findByName(stringValue);
enum Channel {
  userApp("USER_APP"),
  web("WEB"),
  tablet("TABLET"),
  kiosk("KIOSK"),
  ;

  const Channel(this.description);

  final String description;

  static Channel findByName({String? name}) {
    const defaultValue = Channel.userApp;
    if (name == null) {
      return defaultValue;
    }
    return Channel.values.firstWhere(
        (element) => element.description.toUpperCase() == name.toUpperCase(),
        orElse: () => defaultValue);
  }
}