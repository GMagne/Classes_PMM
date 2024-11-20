import 'package:ex2_classe/screens/Input_page.dart';
import 'package:ex2_classe/screens/alert_page.dart';
import 'package:ex2_classe/screens/animated_container.dart';
import 'package:ex2_classe/screens/avatar_page.dart';
import 'package:ex2_classe/screens/card_page.dart';
import 'package:ex2_classe/screens/home_page.dart';
import 'package:ex2_classe/screens/listview_page.dart';
import 'package:ex2_classe/screens/slider_page.dart';
import 'package:flutter/material.dart';

final rutes = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AvatarPage(),
  "card": (BuildContext context) => CardPage(),
  "animatedContainer": (BuildContext context) => AnimatedConatinerPage(),
  "inputs": (BuildContext context) => InputPage(),
  "slider": (BuildContext context) => SliderPage(),
  "list": (BuildContext context) => LlistaPage(),
};

Map<String, WidgetBuilder> getRuta() {
  return rutes;
}
