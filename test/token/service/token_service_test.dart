import 'dart:convert';
import 'dart:io';

import 'package:abc_tech_app_class/token/provider/token_provider_interface.dart';
import 'package:abc_tech_app_class/token/service/token_service.dart';
import 'package:abc_tech_app_class/token/service/token_service_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'token_service_test.mocks.dart';

@GenerateMocks([TokenProviderInterface])
void main() {
  late TokenServiceInterface service;
  late MockTokenProviderInterface provider;

  setUp(() async {
    provider = MockTokenProviderInterface();
    service = TokenService(provider);

    var json =
        File(Directory.current.path + "/test/resources/token_response.json")
            .readAsStringSync();

    when(provider.getToken(any)).thenAnswer((_) async => Future.sync(
        () => Response(statusCode: HttpStatus.ok, body: jsonDecode(json))));
  });

  test('Testando a token service', () async {
    var retorno = await service.getToken();
    expect(retorno,
        'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmYWJpb0BmaWFwLmNvbSIsImV4cCI6MTY1NzI3Mzk2OSwiaWF0IjoxNjUwMDczOTY5fQ.z79ChcLR3nh--lcKFQTfjNeRRXo31yFms8U8AlBBd8A128aBLqnRZzALikK_JalI9OPMDcsNBsSGNlowxmCerA');
  });
}
