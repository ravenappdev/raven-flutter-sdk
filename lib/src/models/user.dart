import 'dart:convert';

import 'package:raven_flutter_sdk/constants.dart';
import 'package:raven_flutter_sdk/src/models/device.dart';
import 'package:raven_flutter_sdk/src/models/preferences.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:raven_flutter_sdk/src/utils/prefs.dart';

part 'user.g.dart';

@JsonSerializable()
class User {

  @JsonKey(name: 'user_id')
  String userId;
  
  @JsonKey(name: 'preferences')
  Preferences? preference;

  @JsonKey(name: 'devices')
  List<Device>? devices;

  @JsonKey(name: 'mobile')
  String? mobile;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'whatsapp_mobile')
  String? whatsAppMobile;

  User({
    required this.userId,
    this.preference,
    this.devices,
    this.mobile,
    this.email,
    this.whatsAppMobile
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

User? getCurrentUser(){
  String? userString = Prefs.getString(PREF_RAVEN_USER, null);
  if(userString == null) return null;

  Map<String, dynamic>? userMap = jsonDecode(userString);

  if(userMap == null) return null;

  User user = User.fromJson(userMap);
  return user;
}

Future<void> setCurrentUser(User? user) async {
  if(user == null) return;
  String userString = jsonEncode(user);
  await Prefs.putString(PREF_RAVEN_USER, userString);
}