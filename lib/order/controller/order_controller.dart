import 'package:abc_tech_app_class/assistance_list/model/assistance.dart';
import 'package:abc_tech_app_class/geolocation/services/geolocation_service_interface.dart';
import 'package:abc_tech_app_class/order/model/order.dart';
import 'package:abc_tech_app_class/order/model/order_created.dart';
import 'package:abc_tech_app_class/order/model/order_location.dart';
import 'package:abc_tech_app_class/order/services/order_service_interface.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

enum OrderState { creating, started, finished }

class OrderController extends GetxController with StateMixin<OrderCreated> {
  final GeolocationServiceInterface _geolocationService;
  final OrderServiceInterface _orderService;
  final selectedAssistances = <Assistance>[].obs;
  final formKey = GlobalKey<FormState>();
  var operatorIdController = TextEditingController();
  final screenState = OrderState.creating.obs;
  late Order _order;

  OrderController(this._geolocationService, this._orderService);

  @override
  void onInit() {
    super.onInit();
    _geolocationService.start();
    change(null, status: RxStatus.success());
  }

  Future<Position> _getLocation() async {
    Position position = await _geolocationService.getPosition();
    return Future.sync(() => position);
  }

  OrderLocation orderLocationFromPosition(Position position) {
    return OrderLocation(
        latitude: position.latitude,
        longitude: position.longitude,
        date: DateTime.now());
  }

  List<int> getServicesIds() {
    return selectedAssistances.map((e) => e.id).toList();
  }

  finishStartOrder() {
    switch (screenState.value) {
      case OrderState.creating:
        change(null, status: RxStatus.loading());
        _getLocation().then((value) {
          _order = Order(
              operatorId: int.parse(operatorIdController.text),
              assistances: getServicesIds(),
              startOrderLocation: orderLocationFromPosition(value),
              endOrderLocation: null);
          screenState.value = OrderState.started;
          change(null, status: RxStatus.success());
        });

        break;
      case OrderState.started:
        change(null, status: RxStatus.loading());
        _getLocation().then((value) {
          _order.endOrderLocation = orderLocationFromPosition(value);
          _createOrder();
        });

        break;
      default:
    }
  }

  _createOrder() {
    screenState.value = OrderState.finished;
    _orderService.createOrder(_order).then((value) {
      if (value.success) {
        Get.snackbar("Sucesso", "Ordem de serviço criada com sucesso",
            backgroundColor: Colors.greenAccent);
      }
      clearForm();
    }).catchError((error) {
      Get.snackbar("Error", error.toString(),
          backgroundColor: Colors.redAccent);
      clearForm();
    });
  }

  editServices() {
    if (screenState.value != OrderState.creating) {
      return null;
    }
    Get.toNamed("/services", arguments: selectedAssistances);
  }

  void clearForm() {
    screenState.value = OrderState.creating;
    operatorIdController.text = "";
    selectedAssistances.clear();
    change(null, status: RxStatus.success());
  }
}
