import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late final SharedPreferences _mPrefs;

  static Future<void> init() async {
    _mPrefs = await SharedPreferences.getInstance();
  }

  static SharedPreferences getPreferences() => _mPrefs;

  static String? getString(String key, String? defValue) {
    return getPreferences().getString(key) ?? defValue;
  }

  static Future<void> putString(String key, String? value) async {
    if(value == null) {
      await getPreferences().remove(key);
    } else {
      await getPreferences().setString(key, value);
    }
  }
}
