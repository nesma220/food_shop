import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_342/view/screens/auth/login_screen.dart';

class SharedPrefController {
  static final SharedPrefController _instance =
      SharedPrefController._internal();
  SharedPrefController._internal();
  late SharedPreferences _sharedPreferences;

  factory SharedPrefController() {
    return _instance;
  }

  Future<void> initSharedPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required String email}) async {
    await _sharedPreferences.setBool(PreFKey.loggedIn.toString(), true);
    await _sharedPreferences.setString(PreFKey.emil.toString(), email);
  }

  bool get loggedIn =>
      _sharedPreferences.getBool(PreFKey.loggedIn.toString()) ?? false;

  String selectedThemeIndex = "selected_theme_index";

  setThemeIndex(int? value) {
    _sharedPreferences.setInt(
        selectedThemeIndex, value!); // Using selectedThemeIndex from constant
  }

  int? get getThemeIndex => _sharedPreferences.getInt(selectedThemeIndex);
}
