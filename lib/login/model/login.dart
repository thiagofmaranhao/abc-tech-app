import 'dart:convert';

class Login {
  String accessCode;
  String name;
  Login({
    required this.accessCode,
    required this.name,
  });

  Login copyWith({
    String? accessCode,
    String? name,
  }) {
    return Login(
      accessCode: accessCode ?? this.accessCode,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'accessCode': accessCode,
      'name': name,
    };
  }

  factory Login.fromMap(Map<String, dynamic> map) {
    return Login(
      accessCode: map['accessCode'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Login.fromJson(String source) => Login.fromMap(json.decode(source));

  @override
  String toString() => 'Login(accessCode: $accessCode, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Login &&
        other.accessCode == accessCode &&
        other.name == name;
  }

  @override
  int get hashCode => accessCode.hashCode ^ name.hashCode;
}
