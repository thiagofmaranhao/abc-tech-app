import 'package:abc_tech_app_class/constants.dart';
import 'package:abc_tech_app_class/order/model/order.dart';
import 'package:abc_tech_app_class/order/provider/order_provider_interface.dart';
import 'package:abc_tech_app_class/token/model/login.dart';
import 'package:get/get.dart';

class OrderProvider extends GetConnect implements OrderProviderInterface {
  @override
  Future<Response> postOrder(Order order) async {
    var login = Login(username: "fabio@fiap.com", password: "senha123");

    var response = await post('${Constants.url}/users/login', login.toMap());
    var token = response.body['token'];

    return post('${Constants.url}/order', order.toMap(),
        headers: {'Authorization': 'Bearer $token'});
  }
}
