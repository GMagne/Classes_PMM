import 'dart:math';
import 'package:ex2_classe/utils/myappbar.dart';

import 'package:flutter/material.dart';

class AnimatedConatinerPage extends StatefulWidget {
  const AnimatedConatinerPage({super.key});

  @override
  State<AnimatedConatinerPage> createState() => AnimatedConatinerPageState();
}

class AnimatedConatinerPageState extends State<AnimatedConatinerPage> {
  final Random rnd = Random();
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Animated Container'),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 2000),
          curve: Curves.fastEaseInToSlowEaseOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _canvisRandom();
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }

  void _canvisRandom() {
    setState(() {
      _width = max(_width + rnd.nextInt(101).toDouble() - 50.0, 1);
      _height = max(_height + rnd.nextInt(101).toDouble() - 50.0, 1);
      _color = Colors.primaries[rnd.nextInt(Colors.primaries.length)];
      _borderRadius = BorderRadius.circular(rnd.nextInt(500).toDouble());
    });
  }
}
