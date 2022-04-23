import 'dart:convert';

import 'package:abc_tech_app_class/order/model/order_created.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testando construtor order created', () async {
    bool success = true;
    String message = "message";

    var orderCreated = OrderCreated(success: success, message: message);
    expect(orderCreated.success, success);
    expect(orderCreated.message, message);
  });

  test('Testando copyWith()', () {
    bool success = true;
    String message = "message";

    var orderCreated = OrderCreated(success: success, message: message);
    var orderCreated2 = orderCreated.copyWith();

    expect(orderCreated2.success, orderCreated.success);
    expect(orderCreated2.message, orderCreated.message);

    var orderCreated3 =
        orderCreated.copyWith(success: false, message: "other_message");

    expect(orderCreated3.success, false);
    expect(orderCreated3.message, "other_message");
  });

  test('Testando toMap()', () async {
    bool success = true;
    String message = "message";

    var orderCreated = OrderCreated(success: success, message: message);
    var map = orderCreated.toMap();

    expect(map['success'], success);
    expect(map['message'], message);
  });

  test('Testando formMap()', () async {
    bool success = true;
    String message = "message";

    var map = {'success': success, 'message': message};

    var orderCreated = OrderCreated.fromMap(map);

    expect(orderCreated.success, success);
    expect(orderCreated.message, message);
  });

  test('Testando toJson()', () async {
    bool success = true;
    String message = "message";

    var orderCreated = OrderCreated(success: success, message: message);
    var jsonText = orderCreated.toJson();
    expect(jsonText, json.encode(orderCreated.toMap()));
  });

  test('Testando fromJson()', () async {
    bool success = true;
    String message = "message";

    var json = "{\"success\":$success,\"message\":\"$message\"}";

    var orderCreated = OrderCreated.fromJson(json);

    expect(orderCreated.success, success);
    expect(orderCreated.message, message);
  });

  test('Testando toString()', () async {
    bool success = true;
    String message = "message";

    var orderCreated = OrderCreated(success: success, message: message);
    var texto = orderCreated.toString();
    expect(texto, 'OrderCreated(success: $success, message: $message)');
  });

  test('Testando operator ==', () async {
    bool success = true;
    String message = "message";

    var orderCreated = OrderCreated(success: success, message: message);

    expect(orderCreated == orderCreated, true);

    var orderCreated2 = OrderCreated(success: success, message: message);

    expect(orderCreated == orderCreated2, true);

    var orderCreated3 = OrderCreated(success: false, message: "other_message");

    expect(orderCreated == orderCreated3, false);
  });

  test('Testando hashCode', () async {
    bool success = true;
    String message = "message";

    var orderCreated = OrderCreated(success: success, message: message);

    expect(orderCreated.hashCode, success.hashCode ^ message.hashCode);
  });
}
