import 'dart:io';

import 'package:abc_tech_app_class/order/model/order.dart';
import 'package:abc_tech_app_class/order/provider/order_provider_interface.dart';
import 'package:abc_tech_app_class/order/services/order_service.dart';
import 'package:abc_tech_app_class/order/services/order_service_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'order_service_test.mocks.dart';

@GenerateMocks([OrderProviderInterface])
void main() {
  late OrderServiceInterface service;
  late MockOrderProviderInterface provider;

  setUp(() async {
    provider = MockOrderProviderInterface();
    service = OrderService(provider);

    when(provider.postOrder(any)).thenAnswer((_) async =>
        Future.sync(() => const Response(statusCode: HttpStatus.ok)));
  });

  test('Testando a order service', () async {
    var order = Order(
        operatorId: 1,
        assistances: [1],
        startOrderLocation: null,
        endOrderLocation: null);

    var retorno = await service.createOrder(order);
    expect(retorno.success, true);
    expect(retorno.message, "");
  });
}
