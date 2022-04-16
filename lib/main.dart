import 'package:abc_tech_app_class/assistance_list/pages/assistance_list_bind.dart';
import 'package:abc_tech_app_class/assistance_list/pages/assistance_list_page.dart';
import 'package:abc_tech_app_class/assistance_list/provider/assistance_provider.dart';
import 'package:abc_tech_app_class/assistance_list/services/assistance_service.dart';
import 'package:abc_tech_app_class/order/pages/order_bind.dart';
import 'package:abc_tech_app_class/order/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  initServices();
  runApp(const MyApp());
}

void initServices() async {
  await Get.putAsync(() => AssistanceService().init(AssistanceProvider()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/", page: () => const OrderPage(), binding: OrderBind()),
        GetPage(
            name: "/services",
            page: () => const AssistanceListPage(),
            binding: AssistanceListBind()),
      ],
    );
  }
}
