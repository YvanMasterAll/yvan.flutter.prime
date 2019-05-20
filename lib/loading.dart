import 'package:prime/test_package/asinnerpage/TabBarBottomPageWidget.dart';
import 'package:prime/base/base_index.dart';

/// 加载页面
class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => new _LoadingState();
}

class _LoadingState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    //在加载页面停顿2秒
    new Future.delayed(Duration(seconds: 2), () {
      _action_jump();
    });
  }

  void _action_jump() async {
    bool need_intro = AppEnv.need_intro();
    if (need_intro == false) {
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(builder: (context) => TabBarWidget()),
          (route) => route == null);
    } else {
      Navigator.of(context).pushReplacementNamed("/splash");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Stack(
        children: <Widget>[
          Image.asset(
            "images/loading.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
