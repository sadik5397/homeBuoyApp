//main.dart
import 'package:flutter/material.dart';
import 'page/welcome.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
    );
    SystemChrome.setEnabledSystemUIOverlays([]);
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HomeBuoy",
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ), // ThemeData
      home: Welcome(),
    ); //MaterialApp
  }
}
