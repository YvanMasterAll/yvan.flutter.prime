import 'package:prime/route/router_application.dart';
import 'package:prime/route/routers.dart';
import 'package:prime/base/base_index.dart';

/// 初始化工作
class AppInit {
  static init() {
    _initRoute();
    _initEnv();
  }

  static void _initRoute() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  static void _initEnv() {
    AppEnv.init();
  }
}
