import 'package:clima/Data/DataLocation.dart';
import 'package:clima/Screen/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(builder: (context) => (const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataLocation>(
      create: (context) => DataLocation(),
      child: MaterialApp(
        title: 'Clima Weather ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
