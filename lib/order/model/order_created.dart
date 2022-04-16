import 'dart:convert';

class OrderCreated {
  bool success;
  String message;
  OrderCreated({
    required this.success,
    required this.message,
  });

  OrderCreated copyWith({
    bool? success,
    String? message,
  }) {
    return OrderCreated(
      success: success ?? this.success,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'message': message,
    };
  }

  factory OrderCreated.fromMap(Map<String, dynamic> map) {
    return OrderCreated(
      success: map['success'] ?? false,
      message: map['message'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderCreated.fromJson(String source) =>
      OrderCreated.fromMap(json.decode(source));

  @override
  String toString() => 'OrderCreated(success: $success, message: $message)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderCreated &&
        other.success == success &&
        other.message == message;
  }

  @override
  int get hashCode => success.hashCode ^ message.hashCode;
}
