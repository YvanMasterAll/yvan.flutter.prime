import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:prime/test_package/asinnerpage/TabBarBottomPageWidget.dart';

var homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parameters) {
  //TODO: 通过传参实现逻辑处理
  String id = parameters["id"]?.first; 
  return TabBarWidget();
});

//MARK: - 学习代码

// var homeHandler = new Handler(
//   handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//     return new AppPage();
//   },
// );

// var categoryHandler = new Handler(
//   handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//     String name = params["type"]?.first;

//     return new CategoryHome(name);
//   },
// );

// var widgetNotFoundHandler = new Handler(
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//   return new WidgetNotFound();
// });

// var fullScreenCodeDialog = new Handler(
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//   String path = params['filePath']?.first;
//   return new FullScreenCodeDialog(
//     filePath: path,
//   );
// });

// var webViewPageHand = new Handler(
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//   String title = params['title']?.first;
//   String url = params['url']?.first;
//   return new WebViewPage(url, title);
// });
