import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> with TickerProviderStateMixin{
  double _targetSize = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: TweenAnimationBuilder(
          tween: Tween(
            begin: 50,
            end: _targetSize,
          ),
          duration: const Duration(seconds: 2),
          onEnd: () {
            setState(() {
              if (_targetSize == 50) {
                _targetSize = 300;
              } else {
                _targetSize = 50;
              }
            });
          }, builder: (BuildContext _, num size, Widget? __) {
          return Container(
            width: 50,
            height: 300,
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    center: Alignment.center,
                    colors: [Colors.orange, Colors.orange]),
                shape: BoxShape.circle),
          );
        },
        ),
      ),
    );
  }
}
