import 'package:abc_tech_app_class/token/model/login.dart';
import 'package:abc_tech_app_class/token/provider/token_provider_interface.dart';
import 'package:abc_tech_app_class/token/service/token_service_interface.dart';

class TokenService implements TokenServiceInterface {
  final TokenProviderInterface _tokenProvider;

  TokenService(this._tokenProvider);

  @override
  Future<String> getToken() async {
    var login = Login(username: "fabio@fiap.com", password: "senha123");

    var response = await _tokenProvider.getToken(login);
    return response.body['token'];
  }
}
