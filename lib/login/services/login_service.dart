import 'package:abc_tech_app_class/login/model/login.dart';
import 'package:abc_tech_app_class/login/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

abstract class LoginServiceInterface {
  Future<Login?> login(String accessCode);
  Future<LoginServiceInterface> init(LoginProviderInterface provider);
}

class LoginService extends GetxService implements LoginServiceInterface {
  late LoginProviderInterface _loginProvider;

  @override
  Future<LoginServiceInterface> init(LoginProviderInterface provider) async {
    _loginProvider = provider;
    return this;
  }

  @override
  Future<Login?> login(String accessCode) async {
    Response response = await _loginProvider.login(accessCode);

    if (response.statusCode == HttpStatus.notFound) {
      return Future.sync(() => null);
    }

    if (response.hasError) {
      return Future.error(ErrorDescription("Erro na conexão"));
    }

    try {
      var login = Login.fromMap(response.body);

      return Future.sync(() => login);
    } catch (e) {
      e.printInfo();
      return Future.error(ErrorDescription("Erro não esperado"));
    }
  }
}
