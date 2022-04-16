import 'dart:convert';

class LoginOutput {
  String token;
  LoginOutput({
    required this.token,
  });

  LoginOutput copyWith({
    String? token,
  }) {
    return LoginOutput(
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'token': token,
    };
  }

  factory LoginOutput.fromMap(Map<String, dynamic> map) {
    return LoginOutput(
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginOutput.fromJson(String source) =>
      LoginOutput.fromMap(json.decode(source));

  @override
  String toString() => 'LoginOutput(token: $token)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginOutput && other.token == token;
  }

  @override
  int get hashCode => token.hashCode;
}
