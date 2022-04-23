import 'dart:convert';

class OrderLocation {
  double latitude;
  double longitude;
  DateTime date;
  OrderLocation({
    required this.latitude,
    required this.longitude,
    required this.date,
  });

  OrderLocation copyWith({
    double? latitude,
    double? longitude,
    DateTime? date,
  }) {
    return OrderLocation(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory OrderLocation.fromMap(Map<String, dynamic> map) {
    return OrderLocation(
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderLocation.fromJson(String source) =>
      OrderLocation.fromMap(json.decode(source));

  @override
  String toString() =>
      'OrderLocation(latitude: $latitude, longitude: $longitude, date: $date)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderLocation &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.date == date;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode ^ date.hashCode;
}
