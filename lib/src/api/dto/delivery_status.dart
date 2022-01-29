import 'package:raven_flutter_sdk/src/models/status.dart';

import 'package:json_annotation/json_annotation.dart';

part 'delivery_status.g.dart';

@JsonSerializable()
class DeliveryStatus {

  @JsonKey(name: 'notification_id')
  String? notificationId;

  @JsonKey(name: 'timestamp')
  int? timestamp = DateTime.now().microsecondsSinceEpoch;

  @JsonKey(name: 'current_timestamp')
  int? currentTimestamp = DateTime.now().microsecondsSinceEpoch;

  @JsonKey(name: 'type')
  Status? type = Status.DELIVERED;

  DeliveryStatus({
    this.notificationId,
    this.timestamp,
    this.currentTimestamp,
    this.type,
  });

  factory DeliveryStatus.fromJson(Map<String, dynamic> json) => _$DeliveryStatusFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryStatusToJson(this);
}
