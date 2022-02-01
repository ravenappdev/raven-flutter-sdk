import 'package:raven_flutter_sdk/raven_flutter_sdk.dart';
import 'package:raven_flutter_sdk/src/api/api_endpoints.dart';
import 'package:raven_flutter_sdk/src/api/api_provider.dart';
import 'package:raven_flutter_sdk/src/api/dto/raven_message.dart';

class CommunicationController {
  RavenResponseCallback? callback;

  CommunicationController({this.callback});

  Future<void> start(String appId, RavenMessage message) async {
    try {
      await ApiEndpoints(baseUrl: ApiProvider.baseUrl).sendCommunication(appId, message);
      callback?.onSuccess();
    } catch (err, st) {
      print(err);
      print(st);
      callback?.onFailure(err.toString());
    }
  }
}
