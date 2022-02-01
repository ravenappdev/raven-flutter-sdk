library raven_flutter_sdk;

import 'package:raven_flutter_sdk/constants.dart';
import 'package:raven_flutter_sdk/src/api/api_provider.dart';
import 'package:raven_flutter_sdk/src/utils/prefs.dart';

import 'package:raven_flutter_sdk/src/api/controllers/communication_controller.dart';
import 'package:raven_flutter_sdk/src/api/controllers/get_user_controller.dart';
import 'package:raven_flutter_sdk/src/api/controllers/remove_token_controller.dart';
import 'package:raven_flutter_sdk/src/api/controllers/update_delivery_status.dart';
import 'package:raven_flutter_sdk/src/api/controllers/update_token_controller.dart';
import 'package:raven_flutter_sdk/src/api/controllers/update_user_controller.dart';

import 'package:raven_flutter_sdk/src/api/dto/delivery_status.dart';
import 'package:raven_flutter_sdk/src/api/dto/raven_message.dart';

import 'package:raven_flutter_sdk/src/models/status.dart';
import 'package:raven_flutter_sdk/src/models/user.dart';


abstract class RavenSdk {
  static const String RAVEN_NOTIFICATION_ID = "raven_notification_id";

  static Future<void> initialize(String appId, String secretKey) async {
    await _initPrefs(appId);
    ApiProvider.init(secretKey);
    await _fetchCurrentUser();
  }

  static Future<void> _setUserId(String userId) async {
    if (userId.isEmpty) {
      return;
    }

    //check if user id is set, or its the first time
    String? currentUserId = Prefs.getString(PREF_USER_ID, null);
    if (currentUserId == userId) {
      return;
    }

    //user switch without logout
    if (currentUserId != null && currentUserId != userId) {
      await logout();
    }

    await Prefs.putString(PREF_USER_ID, userId);
  }

  static Future<void> setUserMobile(String userId, String mobile) async {
    //throws exception if uninitialized
    _checkIfSDKInitialized();

    //set user id
    await _setUserId(userId);

    if (mobile.isEmpty || userId.isEmpty) {
      return;
    }

    //check if cached mobile is same as the argument
    User? currentUser = getCurrentUser();
    if (currentUser?.mobile == mobile) {
      return;
    }

    //Check for currently set user id
    User user = User(userId: userId, mobile: mobile);
    await UpdateUserController().start(Prefs.getString(PREF_APP_ID, null)!, user);
  }

  static Future<void> setUser(String userId, String? mobile, String? email) async {
    //throws exception if uninitialized
    _checkIfSDKInitialized();

    //set user id
    await _setUserId(userId);

    if (userId.isEmpty || ((mobile == null || mobile.isEmpty) && (email == null || email.isEmpty))) {
      return;
    }

    //check if cached mobile/email is same as the argument
    User? currentUser = getCurrentUser();
    if (currentUser?.mobile == mobile && currentUser?.email == email) {
      return;
    }

    User user = User(userId: userId, mobile: mobile, email: email);

    await UpdateUserController().start(Prefs.getString(PREF_APP_ID, null)!, user);
  }

  static Future<void> setUserEmail(String userId, String email) async {
    //throws exception if uninitialized
    _checkIfSDKInitialized();

    //set user id
    await _setUserId(userId);

    if (email.isEmpty || userId.isEmpty) {
      return;
    }

    //check if cached mobile is same as the argument
    User? currentUser = getCurrentUser();
    if (currentUser?.email == email) {
      return;
    }

    User user = User(userId: userId, email: email);
    await UpdateUserController().start(Prefs.getString(PREF_APP_ID, null)!, user);
  }

  static Future<void> setDeviceToken(String token) async {
    //throws exception if uninitialized
    _checkIfSDKInitialized();

    if (token.isEmpty) {
      return;
    }

    //check if token already sent to server
    if (Prefs.getString(PREF_USER_FCM_TOKEN, null) == token) {
      return;
    }

    //check if token already present with server
    User? currentUser = getCurrentUser();
    var isUpdate = false;
    for (var item in currentUser?.devices ?? []) {
      if (item.fcmToken == token && item.platform == PLATFORM) {
        return;
      }

      if (item.deviceSid == Prefs.getString(PREF_USER_DEVICE_ID, null)) {
        if (item.fcmToken != token && item.platform == PLATFORM) {
          isUpdate = true;
        }
      }
    }

    String? userId = Prefs.getString(PREF_USER_ID, null);
    if (userId != null) {
      await UpdateTokenController().start(Prefs.getString(PREF_APP_ID, null)!, userId, token, isUpdate);
    }
  }

  static Future<void> updateStatus(String notificationId, Status status) async {

    DeliveryStatus deliveryStatus = DeliveryStatus(notificationId: notificationId, type: status);
    String? appId = Prefs.getString(PREF_APP_ID, null);

    if (appId != null) {
      await UpdateDeliveryStatus().start(appId, deliveryStatus);
    }

  }

  static Future<void> sendMessage(String template, String id, RavenResponseCallback? callback) async {

    _checkIfSDKInitialized();

    var message = RavenMessage();
    message.event = template;

    var recipient = Recipient();
    recipient.userId = id;
    message.user = recipient;

    await CommunicationController(callback: callback).start(Prefs.getString(PREF_APP_ID, null)!, message);
    
  }

  // Logout user
  static Future<void> logout() async {
    //de register the device
    String? userId = Prefs.getString(PREF_USER_ID, null);
    String? appId = Prefs.getString(PREF_APP_ID, null);

    if (userId != null && appId != null) {
      await RemoveTokenController().start(appId, userId);
    }

    //reset the preferences
    await Prefs.putString(PREF_USER_ID, null);
    await Prefs.putString(PREF_RAVEN_USER, null);
  }

  static Future<void> _fetchCurrentUser() async {
    //throws exception if uninitialized
    _checkIfSDKInitialized();

    //Check for currently set user id
    String? userId = Prefs.getString(PREF_USER_ID, null);

    //if present, get the user from raven backend
    if (userId != null && userId.isNotEmpty) {
      await GetUserController().start(Prefs.getString(PREF_APP_ID, null)!, userId);
    }
  }

  static Future<void> _initPrefs(String appId) async {
    if (appId.isEmpty) {
      // throw error
      throw ArgumentError("App ID cannot be empty");
    }
    await Prefs.init();
    await Prefs.putString(PREF_APP_ID, appId);
  }


  static _checkIfSDKInitialized() {
    if (Prefs.getString(PREF_APP_ID, null) == null) {
      // throw error
      throw StateError("Raven Client SDK not initialized");
    }
  }
}

abstract class RavenResponseCallback {
  void onSuccess();
  void onFailure(String? error);
}
