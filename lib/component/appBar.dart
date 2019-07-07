//appBar.dart
import 'package:flutter/material.dart';

AppBar appBar(String title) {
  return AppBar(
    title: Text(title),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.print),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.insert_comment),
        onPressed: () {},
      ),
    ],
  );
}
