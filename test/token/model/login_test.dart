import 'dart:convert';

import 'package:abc_tech_app_class/token/model/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testando construtor login', () async {
    String username = "username";
    String password = "password";

    var login = Login(username: username, password: password);
    expect(login.username, username);
    expect(login.password, password);
  });

  test('Testando copyWith()', () {
    String username = "username";
    String password = "password";

    var login = Login(username: username, password: password);
    var login2 = login.copyWith();

    expect(login2.username, login.username);
    expect(login2.password, login.password);

    var login3 =
        login.copyWith(username: "new_username", password: "new_password");

    expect(login3.username, "new_username");
    expect(login3.password, "new_password");
  });

  test('Testando toMap()', () async {
    String username = "username";
    String password = "password";

    var login = Login(username: username, password: password);
    var map = login.toMap();

    expect(map['username'], username);
    expect(map['username'], username);
  });

  test('Testando formMap()', () async {
    String username = "username";
    String password = "password";

    var map = {'username': username, 'password': password};

    var login = Login.fromMap(map);

    expect(login.username, username);
    expect(login.password, password);
  });

  test('Testando toJson()', () async {
    String username = "username";
    String password = "password";

    var login = Login(username: username, password: password);
    var jsonText = login.toJson();
    expect(jsonText, json.encode(login.toMap()));
  });

  test('Testando fromJson()', () async {
    String username = "username";
    String password = "password";

    var json = "{\"username\":\"$username\",\"password\":\"$password\"}";

    var login = Login.fromJson(json);

    expect(login.username, username);
    expect(login.password, password);
  });

  test('Testando toString()', () async {
    String username = "username";
    String password = "password";

    var login = Login(username: username, password: password);
    var texto = login.toString();
    expect(texto, 'Login(username: $username, password: $password)');
  });

  test('Testando operator ==', () async {
    String username = "username";
    String password = "password";

    var login = Login(username: username, password: password);

    expect(login == login, true);

    var login2 = Login(username: username, password: password);
    expect(login == login2, true);

    var login3 = Login(username: "other_username", password: "other_password");

    expect(login == login3, false);
  });

  test('Testando hashCode', () async {
    String username = "username";
    String password = "password";

    var login = Login(username: username, password: password);

    expect(login.hashCode, username.hashCode ^ password.hashCode);
  });
}
