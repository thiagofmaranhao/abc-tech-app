import 'package:abc_tech_app_class/login/model/login.dart';
import 'package:abc_tech_app_class/login/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin<Login> {
  late LoginServiceInterface _service;
  final accessCodeController = TextEditingController();
  Login? login;

  @override
  void onInit() {
    super.onInit();
    _service = Get.find<LoginServiceInterface>();
  }

  void executeLogin() {
    checkAccessCode(accessCodeController.text).then((auth) {
      if (auth) {
        Get.toNamed("/home");
      } else {
        Get.snackbar('Login', 'Invalid access code');
      }
    });
  }

  Future<bool> checkAccessCode(String accessCode) async {
    login = await _service.login(accessCodeController.text);

    if (login != null) {
      return Future.value(true);
    }

    return Future.value(false);
  }
}
