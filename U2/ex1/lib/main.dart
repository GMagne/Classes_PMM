import 'package:ex1/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Ex1",
    theme: ThemeData.light(),
    home: HomeScreen(),
  ));
}
