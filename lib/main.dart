import 'package:flutter/material.dart';
import 'package:m2_lesson10/screens/home/fifth_page.dart';
import 'package:m2_lesson10/screens/home/forth_page.dart';
import 'package:m2_lesson10/screens/home/home_page.dart';
import 'package:m2_lesson10/screens/home/second_page.dart';
import 'package:m2_lesson10/screens/home/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MainPage(),
      //home: SecondPage(),
     // home: ThirdPage(),
      //home: CircleAnimation(),
      home: Animated(),
    );
  }
}
