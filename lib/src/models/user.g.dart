// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      userId: json['user_id'] as String,
      preference: json['preferences'] == null
          ? null
          : Preferences.fromJson(json['preferences'] as Map<String, dynamic>),
      devices: (json['devices'] as List<dynamic>?)
          ?.map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      whatsAppMobile: json['whatsapp_mobile'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'user_id': instance.userId,
      'preferences': instance.preference,
      'devices': instance.devices,
      'mobile': instance.mobile,
      'email': instance.email,
      'whatsapp_mobile': instance.whatsAppMobile,
    };
