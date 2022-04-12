import 'package:abc_tech_app_class/new_assistance/controller/new_assistance_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';

class NewAssistancePage extends GetView<NewAssistanceController> {
  const NewAssistancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    var format = DateFormat('dd/MM/yyyy hh:mm');
    var initialDateTime = format.format(now);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Nova Assistência')),
      body: Container(
          margin: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
              top: size.height * 0.05),
          width: size.width * 0.9,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Ordem de Serviço: 123456'),
            Text('Data/Hora Início Atendimento: $initialDateTime'),
            const Text(
                'Endereço inicial de atendimento: Rua X, n.100, São Paulo - SP')
          ])),
    );
  }
}
