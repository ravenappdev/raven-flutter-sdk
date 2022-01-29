import 'package:raven_flutter_sdk/raven_flutter_sdk.dart';
import 'package:raven_flutter_sdk/src/api/api_endpoints.dart';
import 'package:raven_flutter_sdk/src/api/dto/delivery_status.dart';


class UpdateDeliveryStatus {
  RavenResponseCallback? callback;

  UpdateDeliveryStatus({this.callback});

  Future<void> start(String appId, DeliveryStatus deliveryStatus) async {
    try {
      await ApiEndpoints().setDeliveryStatus(appId, deliveryStatus);
      callback?.onSuccess();
    } catch (err, st) {
      print(err);
      print(st);
      callback?.onFailure(err.toString());
    }
  }
}
