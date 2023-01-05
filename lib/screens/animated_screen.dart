import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _with = 50;
  double _height = 66;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(15);

  void changeShape() {
    final random = Random();
    _with = random.nextInt(300).toDouble() + 69;
    _height = random.nextInt(300).toDouble() + 69;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated screen'),
      ),
      body: Center(
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 666),
            curve: Curves.easeOutCubic,
            height: _height,
            width: _with,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRadius)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {changeShape()},
        child: const Icon(
          Icons.play_circle_fill_outlined,
          size: 33,
        ),
      ),
    );
  }
}
