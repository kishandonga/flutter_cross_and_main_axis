import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cross_and_main_axis/controller/dashboard_controller.dart';
import 'package:flutter_cross_and_main_axis/routes.dart';
import 'package:flutter_cross_and_main_axis/url_strategy_web_config.dart';
import 'package:get/get.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    useWebConfig();
  }
  Get.put(DashboardController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Cross And Main Axis',
        theme: controller.themeType == 'Light'
            ? ThemeData.light()
            : ThemeData.dark(),
        routes: appRoutes(),
        initialRoute: Routes.home,
      ),
    );
  }
}
