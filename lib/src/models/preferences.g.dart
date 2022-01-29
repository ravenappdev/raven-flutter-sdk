// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Preferences _$PreferencesFromJson(Map<String, dynamic> json) => Preferences(
      locale: json['locale'] as String?,
      disabled: json['disabled'] as bool?,
      channelPreferences:
          (json['channel_preferences'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ChannelPreference.fromJson(e as Map<String, dynamic>)),
      ),
      deviceSid: json['device_sid'] as String?,
    );

Map<String, dynamic> _$PreferencesToJson(Preferences instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'disabled': instance.disabled,
      'channel_preferences': instance.channelPreferences,
      'device_sid': instance.deviceSid,
    };

ChannelPreference _$ChannelPreferenceFromJson(Map<String, dynamic> json) =>
    ChannelPreference(
      disabled: json['disabled'] as bool?,
    );

Map<String, dynamic> _$ChannelPreferenceToJson(ChannelPreference instance) =>
    <String, dynamic>{
      'disabled': instance.disabled,
    };
