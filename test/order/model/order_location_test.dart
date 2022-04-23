import 'dart:convert';

import 'package:abc_tech_app_class/order/model/order_location.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testando construtor order location', () async {
    double latitude = 0.1;
    double longitude = 0.2;
    DateTime date = DateTime.now();

    var orderLocation =
        OrderLocation(latitude: latitude, longitude: longitude, date: date);

    expect(orderLocation.latitude, latitude);
    expect(orderLocation.longitude, longitude);
    expect(orderLocation.date, date);
  });

  test('Testando copyWith()', () {
    double latitude = 0.1;
    double longitude = 0.2;
    DateTime date = DateTime.now();

    var orderLocation =
        OrderLocation(latitude: latitude, longitude: longitude, date: date);
    var orderLocation2 = orderLocation.copyWith();

    expect(orderLocation2.latitude, orderLocation.latitude);
    expect(orderLocation2.longitude, orderLocation.longitude);
    expect(orderLocation2.date, orderLocation.date);

    DateTime newDate = DateTime.now();

    var orderLocation3 =
        orderLocation.copyWith(latitude: 0.5, longitude: 0.6, date: newDate);

    expect(orderLocation3.latitude, 0.5);
    expect(orderLocation3.longitude, 0.6);
    expect(orderLocation3.date, newDate);
  });

  test('Testando toMap()', () async {
    double latitude = 0.1;
    double longitude = 0.2;
    DateTime date = DateTime.now();

    var orderLocation =
        OrderLocation(latitude: latitude, longitude: longitude, date: date);
    var map = orderLocation.toMap();

    expect(map['latitude'], latitude);
    expect(map['longitude'], longitude);
    expect(map['date'], date.millisecondsSinceEpoch);
  });

  test('Testando fromMap()', () async {
    double latitude = 0.1;
    double longitude = 0.2;
    DateTime date = DateTime.now();

    var map = {
      'latitude': latitude,
      'longitude': longitude,
      'date': date.millisecondsSinceEpoch
    };

    var orderLocation = OrderLocation.fromMap(map);

    expect(orderLocation.latitude, latitude);
    expect(orderLocation.longitude, longitude);
    expect(
        orderLocation.date.millisecondsSinceEpoch, date.millisecondsSinceEpoch);
  });

  test('Testando toJson()', () async {
    double latitude = 0.1;
    double longitude = 0.2;
    DateTime date = DateTime.now();

    var orderLocation =
        OrderLocation(latitude: latitude, longitude: longitude, date: date);
    var jsonText = orderLocation.toJson();
    expect(jsonText, json.encode(orderLocation.toMap()));
  });

  test('Testando fromJson()', () async {
    double latitude = 0.1;
    double longitude = 0.2;
    DateTime date = DateTime.now();

    var json =
        "{\"latitude\":$latitude,\"longitude\":$longitude,\"date\":${date.millisecondsSinceEpoch}}";

    var orderLocation = OrderLocation.fromJson(json);

    expect(orderLocation.latitude, latitude);
    expect(orderLocation.longitude, longitude);
    expect(
        orderLocation.date.millisecondsSinceEpoch, date.millisecondsSinceEpoch);
  });

  test('Testando toString()', () async {
    double latitude = 0.1;
    double longitude = 0.2;
    DateTime date = DateTime.now();

    var orderLocation =
        OrderLocation(latitude: latitude, longitude: longitude, date: date);
    var texto = orderLocation.toString();
    expect(texto,
        'OrderLocation(latitude: $latitude, longitude: $longitude, date: $date)');
  });

  test('Testando operator ==', () async {
    double latitude = 0.1;
    double longitude = 0.2;
    DateTime date = DateTime.now();

    var orderLocation =
        OrderLocation(latitude: latitude, longitude: longitude, date: date);

    expect(orderLocation == orderLocation, true);

    var orderLocation2 =
        OrderLocation(latitude: latitude, longitude: longitude, date: date);

    expect(orderLocation == orderLocation2, true);

    var orderLocation3 =
        OrderLocation(latitude: 0.5, longitude: 0.6, date: DateTime.now());

    expect(orderLocation == orderLocation3, false);
  });

  test('Testando hashCode', () async {
    double latitude = 0.1;
    double longitude = 0.2;
    DateTime date = DateTime.now();

    var orderLocation =
        OrderLocation(latitude: latitude, longitude: longitude, date: date);

    expect(orderLocation.hashCode,
        latitude.hashCode ^ longitude.hashCode ^ date.hashCode);
  });
}
