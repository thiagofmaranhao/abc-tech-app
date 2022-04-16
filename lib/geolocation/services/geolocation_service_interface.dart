import 'package:geolocator/geolocator.dart';

abstract class GeolocationServiceInterface {
  bool isPermissionEnabled();
  Future<Position> getPosition();
  Future<bool> start();
}
