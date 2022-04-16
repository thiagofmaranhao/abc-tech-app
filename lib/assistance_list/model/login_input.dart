import 'dart:convert';

class LoginInput {
  String username;
  String password;
  LoginInput({
    required this.username,
    required this.password,
  });

  LoginInput copyWith({
    String? username,
    String? password,
  }) {
    return LoginInput(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
    };
  }

  factory LoginInput.fromMap(Map<String, dynamic> map) {
    return LoginInput(
      username: map['username'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginInput.fromJson(String source) =>
      LoginInput.fromMap(json.decode(source));

  @override
  String toString() => 'LoginInput(username: $username, password: $password)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginInput &&
        other.username == username &&
        other.password == password;
  }

  @override
  int get hashCode => username.hashCode ^ password.hashCode;
}
