import 'package:flutter/material.dart';

AppBar myAppBar(String title) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.blue,
  );
}
