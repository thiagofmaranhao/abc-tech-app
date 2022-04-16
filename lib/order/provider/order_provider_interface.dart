import 'package:abc_tech_app_class/order/model/order.dart';
import 'package:get/get.dart';

abstract class OrderProviderInterface {
  Future<Response> postOrder(Order order);
}
