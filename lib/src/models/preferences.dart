import 'package:json_annotation/json_annotation.dart';

part 'preferences.g.dart';

@JsonSerializable()
class Preferences {

  @JsonKey(name: 'locale')
  String? locale;

  @JsonKey(name: 'disabled')
  bool? disabled;

  @JsonKey(name: 'channel_preferences')
  Map<String, ChannelPreference>? channelPreferences;

  @JsonKey(name: 'device_sid')
  String? deviceSid;

  Preferences(
      {this.locale, this.disabled, this.channelPreferences, this.deviceSid});


  factory Preferences.fromJson(Map<String, dynamic> json) => _$PreferencesFromJson(json);

  Map<String, dynamic> toJson() => _$PreferencesToJson(this);

}

@JsonSerializable()
class ChannelPreference {

  @JsonKey(name: 'disabled')
  bool? disabled;

  ChannelPreference({
    this.disabled,
  });

  factory ChannelPreference.fromJson(Map<String, dynamic> json) => _$ChannelPreferenceFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelPreferenceToJson(this);
}



