import 'package:ex2/screens/animated_container.dart';
import 'package:ex2/screens/listview_page.dart';
import 'package:ex2/screens/slider_page.dart';
import 'package:ex2/screens/alert_page.dart';
import 'package:ex2/screens/avatar_page.dart';
import 'package:ex2/screens/card_page.dart';
import 'package:ex2/screens/home_page.dart';
import 'package:ex2/screens/input_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => LlistaPage(),
  };
}
