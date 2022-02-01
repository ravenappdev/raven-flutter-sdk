import 'package:raven_flutter_sdk/raven_flutter_sdk.dart';
import 'package:raven_flutter_sdk/src/api/api_endpoints.dart';
import 'package:raven_flutter_sdk/src/api/api_provider.dart';
import 'package:raven_flutter_sdk/src/models/user.dart';

class UpdateUserController {
  RavenResponseCallback? callback;

  UpdateUserController({this.callback});

  Future<void> start(String appId, User user) async {
    try {
      User? updatedUser  = await ApiEndpoints(baseUrl: ApiProvider.baseUrl).createUpdateUser(appId, user);
      User? currentUser = getCurrentUser();
      
      if(currentUser == null && updatedUser != null){
        currentUser = User(userId: updatedUser.userId);
      }

      currentUser?.mobile = updatedUser?.mobile;
      currentUser?.email = updatedUser?.email;
      currentUser?.whatsAppMobile = updatedUser?.whatsAppMobile;
      currentUser?.preference = updatedUser?.preference;
      currentUser?.userId = updatedUser?.userId ?? "";
      await setCurrentUser(currentUser);

      callback?.onSuccess();

    } catch (err, st) {
      print(err);
      print(st);
      callback?.onFailure(err.toString());
    }
  }
}
