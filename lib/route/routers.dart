import 'package:fluro/fluro.dart';
import 'package:prime/route/router_handler.dart';

class Routes {
  static String root = "/";

  static void configureRoutes(Router router) {
    //router.notFoundHandler = noFoundHandler();
    router.define(root, handler: homeHandler);
  }
}
