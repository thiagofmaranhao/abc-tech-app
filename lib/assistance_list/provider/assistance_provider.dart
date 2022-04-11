import 'dart:convert';
import 'dart:io';

import 'package:abc_tech_app_class/constants.dart';
import 'package:get/get.dart';

abstract class AssistanceProviderInterface {
  Future<Response> getAssists();
}

class AssistanceProvider extends GetConnect
    implements AssistanceProviderInterface {
  @override
  //Future<Response> getAssists() => get('${Constants.url}/assistance');
  Future<Response> getAssists() {
    var response = Response(statusCode: HttpStatus.ok, body: jsonDecode(json));

    return Future<Response>(() => response);
  }
}

var json = '''
[
    {
        "id": 1,
        "name": "Troca de aparelho",
        "description": "Troca de aparelho decodificador de sinal"
    },
    {
        "id": 2,
        "name": "Troca de cabo interno",
        "description": "Troca de cabo interno"
    },
    {
        "id": 3,
        "name": "Troca de fiação interna",
        "description": "Substituição de fiação interna da residência"
    },
    {
        "id": 4,
        "name": "Manutenção em fogão",
        "description": "Reparo do fogão sem necessidade de compra de peças"
    },
    {
        "id": 5,
        "name": "Manutenção em microondas",
        "description": "Reparo do microondas sem necessidade de compra de peças"
    }
]''';
