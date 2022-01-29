// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raven_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RavenMessage _$RavenMessageFromJson(Map<String, dynamic> json) => RavenMessage(
      event: json['event'] as String? ?? "",
      locale: json['locale'] as String? ?? "en",
      user: json['user'] == null
          ? null
          : Recipient.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RavenMessageToJson(RavenMessage instance) =>
    <String, dynamic>{
      'event': instance.event,
      'locale': instance.locale,
      'user': instance.user,
    };

Recipient _$RecipientFromJson(Map<String, dynamic> json) => Recipient(
      userId: json['user_id'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      devices: (json['devices'] as List<dynamic>?)
          ?.map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipientToJson(Recipient instance) => <String, dynamic>{
      'user_id': instance.userId,
      'mobile': instance.mobile,
      'email': instance.email,
      'devices': instance.devices,
    };
