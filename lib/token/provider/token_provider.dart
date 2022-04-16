import 'package:abc_tech_app_class/constants.dart';
import 'package:abc_tech_app_class/token/model/login.dart';
import 'package:abc_tech_app_class/token/provider/token_provider_interface.dart';
import 'package:get/get.dart';

class TokenProvider extends GetConnect implements TokenProviderInterface {
  @override
  Future<Response> getToken(Login login) =>
      post('${Constants.url}/users/login', login.toMap());
}
