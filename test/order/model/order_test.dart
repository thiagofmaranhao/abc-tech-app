import 'dart:convert';

import 'package:abc_tech_app_class/order/model/order.dart';
import 'package:abc_tech_app_class/order/model/order_location.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testando construtor order', () async {
    int operatorId = 1;
    List<int> assistances = [1, 2, 3];
    OrderLocation startOrderLocation =
        OrderLocation(latitude: 1.0, longitude: 1.0, date: DateTime.now());
    OrderLocation endOrderLocation =
        OrderLocation(latitude: 1.0, longitude: 1.0, date: DateTime.now());

    var order = Order(
        operatorId: operatorId,
        assistances: assistances,
        startOrderLocation: startOrderLocation,
        endOrderLocation: endOrderLocation);
    expect(order.operatorId, operatorId);
    expect(order.assistances, assistances);
    expect(order.startOrderLocation, startOrderLocation);
    expect(order.endOrderLocation, endOrderLocation);
  });

  test('Testando toMap()', () async {
    int operatorId = 1;
    List<int> assistances = [1, 2, 3];
    OrderLocation startOrderLocation =
        OrderLocation(latitude: 1.0, longitude: 1.0, date: DateTime.now());
    OrderLocation endOrderLocation =
        OrderLocation(latitude: 1.0, longitude: 1.0, date: DateTime.now());

    var order = Order(
        operatorId: operatorId,
        assistances: assistances,
        startOrderLocation: startOrderLocation,
        endOrderLocation: endOrderLocation);
    var map = order.toMap();

    expect(map['operatorId'], operatorId);
    expect(map['assistances'], assistances);
    expect(map['startOrderLocation'], startOrderLocation.toMap());
    expect(map['endOrderLocation'], endOrderLocation.toMap());
  });

  test('Testando toJson()', () async {
    int operatorId = 1;
    List<int> assistances = [1, 2, 3];
    OrderLocation startOrderLocation =
        OrderLocation(latitude: 1.0, longitude: 1.0, date: DateTime.now());
    OrderLocation endOrderLocation =
        OrderLocation(latitude: 1.0, longitude: 1.0, date: DateTime.now());

    var order = Order(
        operatorId: operatorId,
        assistances: assistances,
        startOrderLocation: startOrderLocation,
        endOrderLocation: endOrderLocation);
    var jsonText = order.toJson();
    expect(jsonText, json.encode(order.toMap()));
  });
}
