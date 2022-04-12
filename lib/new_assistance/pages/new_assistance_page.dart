import 'package:abc_tech_app_class/new_assistance/controller/new_assistance_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NewAssistancePage extends GetView<NewAssistanceController> {
  const NewAssistancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Nova Assistência'),
    ));
  }
}
