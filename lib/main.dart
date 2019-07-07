//main.dart
import 'package:flutter/material.dart';
import 'page/welcome.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
