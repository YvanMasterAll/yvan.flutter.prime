import 'package:fluro/fluro.dart';
import 'package:prime/routers/router_handler.dart';
import 'package:flutter/material.dart';
import 'package:prime/splash.dart';

class Routes {
  static String root = "/";
  static String splash = "/splash";

  static void configureRoutes(Router router) {
    router.define(root, handler: homeHandler);
    router.define(splash, handler: new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new SplashScreen();
    }));
  }
}

//MARK: - 学习代码

// class Routes {
//   static String root = "/";
//   static String home = "/home";
//   static String widgetDemo = '/widget-demo';
//   static String codeView = '/code-view';
//   static String webViewPage = '/web-view-page';

//   static void configureRoutes(Router router) {
//     router.notFoundHandler = new Handler(
//         handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//         });
//     router.define(home, handler: homeHandler);
//     router.define('/category/:type', handler: categoryHandler);
//     router.define('/category/error/404', handler: widgetNotFoundHandler);
//     router.define(codeView,handler:fullScreenCodeDialog);
//   }
// }
