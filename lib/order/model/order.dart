import 'dart:convert';

import 'package:abc_tech_app_class/order/model/order_location.dart';

class Order {
  int operatorId;
  List<int> assistances = [];
  OrderLocation? startOrderLocation;
  OrderLocation? endOrderLocation;

  Order(
      {required this.operatorId,
      required this.assistances,
      required this.startOrderLocation,
      required this.endOrderLocation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatorId': operatorId,
      'assistances': assistances,
      'startOrderLocation': startOrderLocation?.toMap(),
      'endOrderLocation': endOrderLocation?.toMap()
    };
  }

  String toJson() => json.encode(toMap());
}
