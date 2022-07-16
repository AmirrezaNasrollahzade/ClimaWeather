// ignore_for_file: file_names

import 'package:flutter/widgets.dart';

class DataLocation extends ChangeNotifier {
  double? longitude;
  double? latitude;

  void updateLocation(double lon, double lat) {
    longitude = lon;
    latitude = lat;
  }
}
