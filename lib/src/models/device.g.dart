// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) => Device(
      fcmToken: json['fcm_token'] as String?,
      platform: json['platform'] as String?,
      disabled: json['notifications_disabled'] as bool?,
      deviceSid: json['device_sid'] as String?,
    );

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'fcm_token': instance.fcmToken,
      'platform': instance.platform,
      'notifications_disabled': instance.disabled,
      'device_sid': instance.deviceSid,
    };
