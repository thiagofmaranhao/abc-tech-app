import 'package:abc_tech_app_class/token/model/login.dart';
import 'package:get/get.dart';

abstract class TokenProviderInterface {
  Future<Response> getToken(Login order);
}
