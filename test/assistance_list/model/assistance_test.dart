import 'package:abc_tech_app_class/assistance_list/model/assistance.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testando construtor assistance', () async {
    int id = 1;
    String name = "name";
    String description = "description";

    var assistance = Assistance(id: id, name: name, description: description);
    expect(assistance.id, id);
    expect(assistance.name, name);
    expect(assistance.description, description);
  });

  test('Testando copyWith()', () {
    int id = 1;
    String name = "name";
    String description = "description";

    var assistance = Assistance(id: id, name: name, description: description);
    var assistance2 = assistance.copyWith();

    expect(assistance2.id, assistance.id);
    expect(assistance2.name, assistance.name);
    expect(assistance2.description, assistance.description);

    var assistance3 = assistance.copyWith(
        id: 2, name: "other_name", description: "other_description");

    expect(assistance3.id, 2);
    expect(assistance3.name, "other_name");
    expect(assistance3.description, "other_description");
  });

  test('Testando toMap()', () async {
    int id = 1;
    String name = "name";
    String description = "description";

    var assistance = Assistance(id: id, name: name, description: description);
    var map = assistance.toMap();

    expect(map['id'], id);
    expect(map['name'], name);
    expect(map['description'], description);
  });

  test('Testando formMap()', () async {
    int id = 1;
    String name = "name";
    String description = "description";

    var map = {'id': id, 'name': name, 'description': description};

    var assistance = Assistance.fromMap(map);

    expect(assistance.id, id);
    expect(assistance.name, name);
    expect(assistance.description, description);
  });

  test('Testando toJson()', () async {
    int id = 1;
    String name = "name";
    String description = "description";

    var assistance = Assistance(id: id, name: name, description: description);
    var json = assistance.toJson();
    expect(json,
        "{\"id\":$id,\"name\":\"$name\",\"description\":\"$description\"}");
  });

  test('Testando fromJson()', () async {
    int id = 1;
    String name = "name";
    String description = "description";

    var json =
        "{\"id\":$id,\"name\":\"$name\",\"description\":\"$description\"}";

    var assistance = Assistance.fromJson(json);

    expect(assistance.id, id);
    expect(assistance.name, name);
    expect(assistance.description, description);
  });

  test('Testando toString()', () async {
    int id = 1;
    String name = "name";
    String description = "description";

    var assistance = Assistance(id: id, name: name, description: description);
    var texto = assistance.toString();
    expect(
        texto, 'Assistance(id: $id, name: $name, description: $description)');
  });

  test('Testando operator ==', () async {
    int id = 1;
    String name = "name";
    String description = "description";

    var assistance = Assistance(id: id, name: name, description: description);

    expect(assistance == assistance, true);

    var assistance2 = Assistance(id: id, name: name, description: description);
    expect(assistance == assistance2, true);

    var assistance3 =
        Assistance(id: 2, name: "other_name", description: "other_description");

    expect(assistance == assistance3, false);
  });

  test('Testando hashCode', () async {
    int id = 1;
    String name = "name";
    String description = "description";

    var assistance = Assistance(id: id, name: name, description: description);

    expect(assistance.hashCode,
        id.hashCode ^ name.hashCode ^ description.hashCode);
  });
}
