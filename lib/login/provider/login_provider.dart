import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

abstract class LoginProviderInterface {
  Future<Response> login(String accessCode);
}

class LoginProvider extends GetConnect implements LoginProviderInterface {
  @override
  //Future<Response> getAssists() => get('${Constants.url}/assistance');
  Future<Response> login(String codigoAcesso) {
    Response response;

    if (codigoAcesso == "1") {
      response = Response(statusCode: HttpStatus.ok, body: jsonDecode(json));
    } else {
      response = const Response(statusCode: HttpStatus.notFound);
    }

    return Future<Response>(() => response);
  }
}

var json = '''
{
    "accessCode": "1",
    "name": "Roberto Antunes"
}''';
