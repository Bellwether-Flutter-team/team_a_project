// import 'package:team_a_project/';
import 'package:get/route_manager.dart';
import 'package:team_a_project/pages/home.dart';
import 'package:team_a_project/routes/app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> list = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.home,
      page: () => const MyHomePage(),
    ),
  ];
}
