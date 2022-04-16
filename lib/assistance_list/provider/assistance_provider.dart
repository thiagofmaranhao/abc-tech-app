import 'package:abc_tech_app_class/assistance_list/provider/assistance_provider_interface.dart';
import 'package:abc_tech_app_class/constants.dart';
import 'package:abc_tech_app_class/token/model/login.dart';
import 'package:get/get.dart';

class AssistanceProvider extends GetConnect
    implements AssistanceProviderInterface {
  @override
  Future<Response> getAssists() async {
    var login = Login(username: "fabio@fiap.com", password: "senha123");

    var response = await post('${Constants.url}/users/login', login.toMap());
    var token = response.body['token'];

    return get('${Constants.url}/assistance',
        headers: {'Authorization': 'Bearer $token'});
  }
}
