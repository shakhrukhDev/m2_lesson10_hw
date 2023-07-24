import 'package:flutter/material.dart';

class Animated extends StatefulWidget {
  const Animated({Key? key}) : super(key: key);

  @override
  State<Animated> createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> with TickerProviderStateMixin{
  bool isBigger = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: AnimatedContainer(
            color: isBigger?Colors.green:Colors.blue,
            height: isBigger ? 900 : 100,
            width: isBigger ? 500 : 100,
            duration: const Duration(seconds: 2),
            curve: Curves.linear,
            child: Container(
              child:  Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    isBigger = !isBigger;
                    setState(() {});
                  },
                  child:
                  const Text("Animated"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}