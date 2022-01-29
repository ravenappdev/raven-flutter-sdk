import 'package:raven_flutter_sdk/src/models/device.dart';

import 'package:json_annotation/json_annotation.dart';

part 'raven_message.g.dart';

@JsonSerializable()
class RavenMessage {

  @JsonKey(name: 'event')
  String? event;

  @JsonKey(name: 'locale')
  String? locale;

  @JsonKey(name: 'user')
  Recipient? user;

  RavenMessage({
    this.event = "",
    this.locale = "en",
    this.user,
  });

  factory RavenMessage.fromJson(Map<String, dynamic> json) => _$RavenMessageFromJson(json);

  Map<String, dynamic> toJson() => _$RavenMessageToJson(this);
}

@JsonSerializable()
class Recipient {

  @JsonKey(name: 'user_id')
  String? userId;

  @JsonKey(name: 'mobile')
  String? mobile;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'devices')
  List<Device>? devices;

  Recipient({
    this.userId,
    this.mobile,
    this.email,
    this.devices
  });

  factory Recipient.fromJson(Map<String, dynamic> json) => _$RecipientFromJson(json);

  Map<String, dynamic> toJson() => _$RecipientToJson(this);
}
