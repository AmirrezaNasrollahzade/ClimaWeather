// ignore_for_file: file_names

import 'package:clima/Data/DataLocation.dart';
import 'package:clima/Screen/HomeScreen.dart';
import 'package:clima/Service/getCurrentLocation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
        body: FutureBuilder<Position>(
            future: getLocation(),
            builder: (ctx, snapShot) {
              if (snapShot.hasError) {
                return Center(
                  child: Text('${snapShot.error} occurred.'),
                );
              } else if (snapShot.hasData) {
                double longitude = snapShot.data!.longitude;
                double latitude = snapShot.data!.latitude;
                print('longitude:$longitude');
                Provider.of<DataLocation>(context, listen: false)
                    .updateLocation(longitude, latitude);

                return HomeScreen();
              }
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.green.shade300,
                ),
              );
            }),
      ),
    );
  }
}
