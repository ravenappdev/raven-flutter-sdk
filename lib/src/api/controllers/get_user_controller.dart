import 'package:raven_flutter_sdk/raven_flutter_sdk.dart';
import 'package:raven_flutter_sdk/src/api/api_endpoints.dart';
import 'package:raven_flutter_sdk/src/models/user.dart';

class GetUserController {
  RavenResponseCallback? callback;

  GetUserController({this.callback});

  Future<void> start(String appId, String userId) async {
    try {
      User? user = await ApiEndpoints().getUser(appId, userId);
      await setCurrentUser(user);
      callback?.onSuccess();
    } catch (err,st) {
      print(err);
      print(st);
      callback?.onFailure(err.toString());
    }
  }
}
