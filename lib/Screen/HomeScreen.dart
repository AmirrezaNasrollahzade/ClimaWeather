// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                ),
                Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
/*
 Center(
      child: Text(
        'latitude: ${Provider.of<DataLocation>(context).latitude} and longitude:${Provider.of<DataLocation>(context).longitude} ',
        style: const TextStyle(fontSize: 18),
      ),
    );
*/