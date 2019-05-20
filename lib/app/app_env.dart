import 'package:prime/base/base_index.dart';

/// 环境信息
class AppEnv {
  /// 初始化
  static init() {
    SpUtils().init();
  }

  //MARK: - 显示介绍页面

  static bool need_intro() {
    return SpUtils().getBool(NEED_INTRO);
  }

  static void set_need_intro(bool b) {
    SpUtils().setBool(NEED_INTRO, b);
  }

  //MARK: - SPKeys

  static const String NEED_INTRO = "NEED_INTRO";
}