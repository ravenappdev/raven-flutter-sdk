import 'package:raven_flutter_sdk/constants.dart';
import 'package:raven_flutter_sdk/raven_flutter_sdk.dart';
import 'package:raven_flutter_sdk/src/api/api_endpoints.dart';
import 'package:raven_flutter_sdk/src/api/api_provider.dart';
import 'package:raven_flutter_sdk/src/models/device.dart';
import 'package:raven_flutter_sdk/src/models/user.dart';
import 'package:raven_flutter_sdk/src/utils/prefs.dart';

class RemoveTokenController {
  RavenResponseCallback? callback;
 
  RemoveTokenController({this.callback});

  Future<void> start(String appId, String userId) async {
    try {
      String? deviceId = Prefs.getString(PREF_USER_DEVICE_ID, null);
      
      if(deviceId != null){
        await ApiEndpoints(baseUrl: ApiProvider.baseUrl).removeDeviceToken(appId, userId, deviceId);
      }

      User? currentUser = getCurrentUser();

      if(currentUser != null){
        Iterable<Device>? list = currentUser.devices?.where((device) => 
          device.deviceSid != Prefs.getString(PREF_USER_DEVICE_ID, null)
        );
        currentUser.devices = list?.toList();
        await setCurrentUser(currentUser);
      }

      callback?.onSuccess();

    } catch (err, st) {
      print(err);
      print(st);
      callback?.onFailure(err.toString());
    }
  }
}
