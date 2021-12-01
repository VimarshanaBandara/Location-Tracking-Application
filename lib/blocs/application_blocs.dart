import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location_tracking_app/services/geolocator_service.dart';



class ApplicationBloc with ChangeNotifier {
  final geoLocatorService = GeolocatorService();

  late Position currentLocation;

  ApplicationBloc(){
    setCurrentLocation();
  }


  setCurrentLocation() async {
    currentLocation = await geoLocatorService.getCurrentLocation();
    notifyListeners();
  }


}