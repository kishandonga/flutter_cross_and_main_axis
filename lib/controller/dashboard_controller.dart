import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardController extends GetxController {
  final _themeType = 'Light'.obs;
  String get themeType => _themeType.value;
  set themeType(String value) => _themeType.value = value;

  late SharedPreferences preferences;

  @override
  void onInit() {
    super.onInit();
    initValues();
  }

  initValues() async {
    preferences = await SharedPreferences.getInstance();
    themeType = preferences.getString('themeType') ?? 'Light';
  }

  changeTheme() async {
    if (themeType == 'Light') {
      themeType = 'Dark';
      await preferences.setString('themeType', themeType);
    } else {
      themeType = 'Light';
      await preferences.setString('themeType', themeType);
    }
  }
}
