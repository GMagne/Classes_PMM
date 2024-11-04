import 'package:ex2_classe/screens/alert_page.dart';
import 'package:ex2_classe/screens/card_page.dart';
import 'package:ex2_classe/screens/home_page.dart';
import 'package:ex2_classe/screens/home_temp.dart';
import 'package:flutter/material.dart';

final rutes = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AlertPage(),
  "card": (BuildContext context) => CardPage(),
  "animatedContainer": (BuildContext context) => HomePageTemp(),
  "inputs": (BuildContext context) => HomePageTemp(),
  "slider": (BuildContext context) => HomePageTemp(),
  "list": (BuildContext context) => HomePageTemp(),
};

Map<String, WidgetBuilder> getRuta() {
  return rutes;
}
