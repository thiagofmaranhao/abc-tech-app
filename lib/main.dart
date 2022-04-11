import 'package:abc_tech_app_class/assistance_list/pages/home_bind.dart';
import 'package:abc_tech_app_class/assistance_list/pages/home_page.dart';
import 'package:abc_tech_app_class/assistance_list/provider/assistance_provider.dart';
import 'package:abc_tech_app_class/assistance_list/services/assistance_service.dart';
import 'package:abc_tech_app_class/login/pages/login_bind.dart';
import 'package:abc_tech_app_class/login/pages/login_page.dart';
import 'package:abc_tech_app_class/login/provider/login_provider.dart';
import 'package:abc_tech_app_class/login/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  initServices();
  runApp(const MyApp());
}

void initServices() async {
  await Get.putAsync(() => LoginService().init(LoginProvider()));
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/", page: () => const LoginPage(), binding: LoginBind()),
        GetPage(
            name: "/home", page: () => const HomePage(), binding: HomeBind())
      ],
    );
  }
}
