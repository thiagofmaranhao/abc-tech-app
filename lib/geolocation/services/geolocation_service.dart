import 'package:abc_tech_app_class/geolocation/services/geolocation_service_interface.dart';
import 'package:geolocator/geolocator.dart';

class GeolocationService implements GeolocationServiceInterface {
  bool _serviceEnabled = false;
  LocationPermission _permission = LocationPermission.denied;

  Future<bool> _enableService() async {
    _serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!_serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    return Future.sync(() => true);
  }

  Future<void> _requestPermission() async {
    _permission = await Geolocator.checkPermission();

    if (_permission == LocationPermission.denied) {
      _permission = await Geolocator.requestPermission();
    }
    return Future.sync(() => null);
  }

  @override
  Future<Position> getPosition() async {
    if (!isPermissionEnabled()) {
      return Future.error('Permissão negada');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  bool isPermissionEnabled() {
    if (_permission == LocationPermission.denied ||
        _permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  @override
  Future<bool> start() async {
    bool enabled = await _enableService();

    if (enabled) {
      await _requestPermission();
      return Future.sync(() => true);
    }
    return Future.sync(() => false);
  }
}
