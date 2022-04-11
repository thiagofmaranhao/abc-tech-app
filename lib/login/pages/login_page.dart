import 'package:abc_tech_app_class/assistance_list/pages/home_page.dart';
import 'package:abc_tech_app_class/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Container(
          margin: EdgeInsets.only(
              left: size.width * 0.05, right: size.width * 0.05),
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller.accessCodeController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Código'),
              ),
              OutlinedButton(
                  onPressed: controller.executeLogin,
                  child: const Text("Login"))
            ],
          ),
        ));
  }

  get onPressed => null;
}
