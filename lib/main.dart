import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cross_and_main_axis/routes.dart';
import 'package:flutter_cross_and_main_axis/url_strategy_web_config.dart';
import 'package:get/get.dart';

void main() {
  if (kIsWeb) {
    useWebConfig();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cross And Main Axis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.home,
      getPages: appRoutes(),
    );
  }
}
