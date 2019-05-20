import 'package:prime/route/router_application.dart';
import 'package:prime/app/app_init.dart';
import 'package:prime/loading.dart';
import 'package:prime/base/base_index.dart';

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
