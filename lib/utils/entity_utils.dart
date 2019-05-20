import 'package:prime/network/bean/login_response_entity.dart';

class EntityUtils {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "LoginResponseEntity") {
      return LoginResponseEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}
