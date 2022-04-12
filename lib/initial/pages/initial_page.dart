import 'package:abc_tech_app_class/initial/controller/initial_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends GetView<InitialController> {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Olá, ${Get.arguments?['name'] ?? ''}"),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          margin: EdgeInsets.only(
              left: size.width * 0.05, right: size.width * 0.05),
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: controller.initAssistance,
                  child: const Text("Iniciar Atendimento"))
            ],
          ),
        ));
  }
}
