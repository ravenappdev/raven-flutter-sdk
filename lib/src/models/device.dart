import 'package:json_annotation/json_annotation.dart';

part 'device.g.dart';

@JsonSerializable()
class Device {

  @JsonKey(name: 'fcm_token')
  String? fcmToken;

  @JsonKey(name: 'platform')
  String? platform;

  @JsonKey(name: 'notifications_disabled')
  bool? disabled;

  @JsonKey(name: 'device_sid')
  String? deviceSid;

  Device({
    this.fcmToken,
    this.platform,
    this.disabled,
    this.deviceSid
  });

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}

