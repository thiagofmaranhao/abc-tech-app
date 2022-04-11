import 'package:abc_tech_app_class/login/model/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testing login model - Constructor', () async {
    var accessCode = "1";
    var name = "John Doe";

    var login = Login(accessCode: accessCode, name: name);
    expect(login.accessCode, accessCode);
    expect(login.name, name);
  });

  test('Testing login model - copyWith Method', () async {
    var accessCode = "1";
    var name = "John Doe";

    var login = Login(accessCode: accessCode, name: name);
    var loginCopy = login.copyWith();
    expect(loginCopy.accessCode, login.accessCode);
    expect(loginCopy.name, login.name);
  });

  test('Testing login model - toMap Method', () async {
    var accessCode = "1";
    var name = "John Doe";

    var login = Login(accessCode: accessCode, name: name);

    var mapLogin = login.toMap();

    expect(mapLogin['accessCode'], login.accessCode);
    expect(mapLogin['name'], login.name);
  });

  test('Testing login model - fromMap Method', () async {
    var accessCode = "1";
    var name = "John Doe";

    Map<String, dynamic> map = {
      'accessCode': accessCode,
      'name': name,
    };

    var login = Login.fromMap(map);

    expect(login.accessCode, accessCode);
    expect(login.name, name);
  });

  test('Testing login model - toJson Method', () async {
    var accessCode = "1";
    var name = "John Doe";

    var login = Login(accessCode: accessCode, name: name);

    var json = login.toJson();

    var jsonExpected = '{"accessCode":"1","name":"John Doe"}';

    expect(json, jsonExpected);
  });

  test('Testing login model - fromJson Method', () async {
    var json = '{"accessCode":"1","name":"John Doe"}';

    var expectedAccessCode = "1";
    var expectedName = "John Doe";

    var login = Login.fromJson(json);

    expect(login.accessCode, expectedAccessCode);
    expect(login.name, expectedName);
  });

  test('Testing login model - toString Method', () async {
    var accessCode = "1";
    var name = "John Doe";

    var login = Login(accessCode: accessCode, name: name);

    var resultado = login.toString();

    expect(resultado, 'Login(accessCode: $accessCode, name: $name)');
  });

  test('Testing login model - Equal Operator - Same object', () async {
    var accessCode = "1";
    var name = "John Doe";

    var login = Login(accessCode: accessCode, name: name);

    var resultado = login == login;

    expect(resultado, true);
  });

  test('Testing login model - Equal Operator - Other object same values',
      () async {
    var accessCode = "1";
    var name = "John Doe";

    var login1 = Login(accessCode: accessCode, name: name);
    var login2 = Login(accessCode: accessCode, name: name);

    var resultado = login1 == login2;

    expect(resultado, true);
  });

  test('Testing login model - Equal Operator - Other object other values',
      () async {
    var accessCode1 = "1";
    var name1 = "John Doe";

    var accessCode2 = "2";
    var name2 = "Mary jane";

    var login1 = Login(accessCode: accessCode1, name: name1);
    var login2 = Login(accessCode: accessCode2, name: name2);

    var resultado = login1 == login2;

    expect(resultado, false);
  });
}
