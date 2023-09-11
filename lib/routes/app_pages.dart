// import 'package:team_a_project/';
import 'package:get/route_manager.dart';
import 'package:team_a_project/pages/condition_page.dart';
import 'package:team_a_project/pages/decide_page.dart';
import 'package:team_a_project/pages/home.dart';
import 'package:team_a_project/pages/riku_app.dart';
import 'package:team_a_project/pages/yoshi_app/yoshi_app.dart';
import 'package:team_a_project/pages/yoshi_app/task_add.dart';
import 'package:team_a_project/routes/app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> list = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.home,
      page: () => MyHomePage(),
    ),
    GetPage(
      name: AppRoutes.yoshiApp,
      page: () => const YoshiAppPage(),
    ),
    GetPage(
      name: AppRoutes.rikuApp,
      page: () => const RikuAppPae(),
    ),
    GetPage(
      name: AppRoutes.conditionPage,
      page: () => const ConditionPage(),
    ),
    GetPage(
      name: AppRoutes.decidePage,
      page: () => const DecidePage(),
    ),
    GetPage(name: AppRoutes.yoshiAppAddTask, page: () => YoshiTaskAddPage())
  ];
}
