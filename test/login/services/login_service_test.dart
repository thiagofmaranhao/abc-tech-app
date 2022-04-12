import 'dart:convert';
import 'dart:io';

import 'package:abc_tech_app_class/login/provider/login_provider.dart';
import 'package:abc_tech_app_class/login/services/login_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_service_test.mocks.dart';

@GenerateMocks([LoginProviderInterface])
void main() {
  late LoginServiceInterface service;
  late MockLoginProviderInterface provider;

  setUp(() async {
    provider = MockLoginProviderInterface();
    service = await LoginService().init(provider);
    var json = File(Directory.current.path +
            "/test/login/resources/login_response.json")
        .readAsStringSync();

    when(provider.login("1")).thenAnswer((_) async => Future.sync(
        () => Response(statusCode: HttpStatus.ok, body: jsonDecode(json))));
  });

  test('Testando o login service', () async {
    var login = await service.login("1");
    expect(login?.accessCode, "1");
    expect(login?.name, "John Doe");
  });
}
