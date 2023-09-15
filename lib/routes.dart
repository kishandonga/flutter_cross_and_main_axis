import 'package:flutter_cross_and_main_axis/pages/alignment_page.dart';
import 'package:flutter_cross_and_main_axis/pages/column_axis_page.dart';
import 'package:flutter_cross_and_main_axis/pages/home_page.dart';
import 'package:flutter_cross_and_main_axis/pages/row_axis_page.dart';
import 'package:get/get.dart';

class Routes {
  static String home = '/';
  static String columnAxisPage = '/column-axis';
  static String rowAxisPage = '/row-axis';
  static String alignmentPage = '/alignment';
}

appRoutes() => [
      GetPage(
        name: Routes.home,
        page: () => HomePage(),
      ),
      GetPage(
        name: Routes.columnAxisPage,
        page: () => ColumnAxisPage(),
      ),
      GetPage(
        name: Routes.rowAxisPage,
        page: () => RowAxisPage(),
      ),
      GetPage(
        name: Routes.alignmentPage,
        page: () => AlignmentPage(),
      ),
    ];
