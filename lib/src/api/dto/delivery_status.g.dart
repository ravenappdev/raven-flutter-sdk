// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryStatus _$DeliveryStatusFromJson(Map<String, dynamic> json) =>
    DeliveryStatus(
      notificationId: json['notification_id'] as String?,
      timestamp: json['timestamp'] as int?,
      currentTimestamp: json['current_timestamp'] as int?,
      type: $enumDecodeNullable(_$StatusEnumMap, json['type']),
    );

Map<String, dynamic> _$DeliveryStatusToJson(DeliveryStatus instance) =>
    <String, dynamic>{
      'notification_id': instance.notificationId,
      'timestamp': instance.timestamp,
      'current_timestamp': instance.currentTimestamp,
      'type': _$StatusEnumMap[instance.type],
    };

const _$StatusEnumMap = {
  Status.DELIVERED: 'DELIVERED',
  Status.CLICKED: 'CLICKED',
  Status.DISMISSED: 'DISMISSED',
};
