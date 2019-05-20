import 'dart:async';

import 'package:prime/base/base_widget.dart';
import 'package:prime/base/base_inner_widget.dart';
import 'package:prime/base/common_function.dart';
import 'package:prime/network/api.dart';
import 'package:prime/network/bean/login_response_entity.dart';
import 'package:prime/network/intercept/base_intercept.dart';
import 'package:rxdart/rxdart.dart';

class RequestMap {
  static PublishSubject<LoginResponseEntity> requestLogin<BaseResponse>(
      BaseIntercept baseIntercept) {
    String url = "xiandu/category/wow";
    LoginResponseEntity loginResponseEntity =
        LoginResponseEntity(); //模拟 带参数，直接对象转json就可以了
    loginResponseEntity.error = false;
    return HttpManager().get<LoginResponseEntity>(url,
        queryParameters: loginResponseEntity.toJson(),
        baseIntercept: baseIntercept,
        isCancelable: false);
  }

  static PublishSubject testErrorrequest(BaseIntercept baseIntercept) {
    String urlError = "error";
    return HttpManager().get<LoginResponseEntity>(urlError = "error",
        baseIntercept: baseIntercept);
  }
}
