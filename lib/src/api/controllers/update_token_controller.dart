import 'dart:io';

import 'package:raven_flutter_sdk/constants.dart';
import 'package:raven_flutter_sdk/raven_flutter_sdk.dart';
import 'package:raven_flutter_sdk/src/api/api_endpoints.dart';
import 'package:raven_flutter_sdk/src/api/api_provider.dart';
import 'package:raven_flutter_sdk/src/models/device.dart';
import 'package:raven_flutter_sdk/src/models/user.dart';
import 'package:raven_flutter_sdk/src/utils/prefs.dart';

class UpdateTokenController {
  RavenResponseCallback? callback;

  UpdateTokenController({this.callback});

  Future<void> start(String appId, String userId, String deviceToken, bool isUpdate) async {
    try {
      Device? device;
      String? platform = ANDROID_PLATFORM;

      if(Platform.isIOS) {
        platform = IOS_PLATFORM;
      }

      if (isUpdate) {
        String? deviceId = Prefs.getString(PREF_USER_DEVICE_ID, null);
        if (deviceId != null) {
          device = await ApiEndpoints(baseUrl: ApiProvider.baseUrl).updateDeviceToken(appId, userId, deviceId, 
                                                          Device(fcmToken: deviceToken, platform: platform));
        } 
      } else {
        device = await ApiEndpoints(baseUrl: ApiProvider.baseUrl).addDeviceToken(appId, userId, 
                                                      Device(fcmToken: deviceToken, platform: platform));
      }
     
      User? currentUser = getCurrentUser();

      currentUser ??= User(userId: userId);

      currentUser.devices ??= [];

      if(device != null) {
        currentUser.devices?.add(device);
      }

      await setCurrentUser(currentUser);

      await Prefs.putString(PREF_USER_DEVICE_ID, device?.deviceSid);
      await Prefs.putString(PREF_USER_FCM_TOKEN, device?.fcmToken);

      callback?.onSuccess();

    } catch (err, st) {
      print(err);
      print(st);
      callback?.onFailure(err.toString());
    }
  }
}
