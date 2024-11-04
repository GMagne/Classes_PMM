import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  var _rng = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _randomContainer,
        child: Icon(Icons.attractions),
      ),
      appBar: AppBar(
        title: Text('Contenidor Animat'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 1000),
          curve: Curves.ease,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
    );
  }

  void _randomContainer() {
    setState(() {
      _width += _rng.nextInt(101) + max(-50, 1 - _width);
      _height += _rng.nextInt(101) + max(-50, 1 - _width);
      _borderRadius = BorderRadius.circular(_rng.nextInt(100).toDouble());
      _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }
}
