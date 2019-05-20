import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:prime/test_package/asinnerpage/TabBarBottomPageWidget.dart';

var homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parameters) {
  // TODO: 根据路由id返回页面
  String id = parameters["id"]?.first; 
  return TabBarWidget();
});
