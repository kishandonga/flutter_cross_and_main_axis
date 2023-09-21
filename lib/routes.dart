import 'package:flutter_cross_and_main_axis/pages/alignment_page.dart';
import 'package:flutter_cross_and_main_axis/pages/column_axis_page.dart';
import 'package:flutter_cross_and_main_axis/pages/dashboard_page.dart';
import 'package:flutter_cross_and_main_axis/pages/row_axis_page.dart';
import 'package:get/get.dart';

class Routes {
  static String home = '/';
  static String columnAxisPage = '/column-axis';
  static String rowAxisPage = '/row-axis';
  static String alignmentPage = '/alignment';
}

appRoutes() => {
      Routes.home: (_) => DashboardPage(),
      Routes.columnAxisPage: (_) => ColumnAxisPage(),
      Routes.rowAxisPage: (_) => RowAxisPage(),
      Routes.alignmentPage: (_) => AlignmentPage(),
    };

appGetxRoutes() => [
      GetPage(
        name: Routes.home,
        page: () => DashboardPage(),
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
