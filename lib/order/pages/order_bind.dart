import 'package:abc_tech_app_class/geolocation/services/geolocation_service.dart';
import 'package:abc_tech_app_class/order/controller/order_controller.dart';
import 'package:abc_tech_app_class/order/provider/order_provider.dart';
import 'package:abc_tech_app_class/order/services/order_service.dart';
import 'package:get/get.dart';

class OrderBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderController>(() =>
        OrderController(GeolocationService(), OrderService(OrderProvider())));
  }
}
