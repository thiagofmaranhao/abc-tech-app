import 'package:abc_tech_app_class/order/model/order.dart';
import 'package:abc_tech_app_class/order/model/order_created.dart';

abstract class OrderServiceInterface {
  Future<OrderCreated> createOrder(Order order);
}
