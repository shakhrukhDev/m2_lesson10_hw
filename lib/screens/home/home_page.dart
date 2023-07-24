import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _width = 100; // the width at the beginning
  double _height = 100; // the height at the beginning
  Color _color = Colors.yellow; // the color at the beginning

  // This function is used to start the animation
  // It will be triggered when the floating action button is pressed
  void _start() {
    setState(() {
      _width = 300;
      _height = 300;
      _color = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.black87,
        // The AnimatedContainer is used to animate the width, height, and color
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          width: _width,
          height: _height,
          decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
          curve: Curves.decelerate,
          onEnd: () {
            setState(() {
              _width = _width == 100 ? 300 : 100;
              _height = _height == 100 ? 300 : 100;
              _color = _color == Colors.yellow ? Colors.red : Colors.yellow;
            });
          },
        ),
      ),
      // This button is used to start the animation
      floatingActionButton: ElevatedButton.icon(
          onPressed: _start,
          icon: const Icon(Icons.run_circle),
          label: const Text('Start Infinite Pulsating')),
    );
  }
}
