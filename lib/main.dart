import 'package:prime/app/app_init.dart';
import 'package:prime/loading.dart';
import 'package:prime/base/base_index.dart';

/// https://github.com/hanlin19900610/flutter_bottom_navigation_bar //仿闲鱼底部导航栏带有中间凸起图标
/// 编写简单的测试主页 => 重审base_widget => 在测试页面使用base_widget => 接入BloC => 网络层封装 => 使用BloC实现数据请求加载列表 => 下拉刷新 => 页面状态 => 全局模态层 => 回头, 重新改造SplashPage和IntroPage, 放到pages的welcome目录下 => 重构代码
/// 实现简单的登录功能和列表请求功能

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    //设置android状态栏为沉浸透明. 写在组件渲染之后, 是为了在渲染后赋值, 如果写在渲染前会被MaterialApp覆盖.
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    AppInit.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
      home: LoadingPage(),
    );
  }
}
