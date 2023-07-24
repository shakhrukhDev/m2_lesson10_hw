import 'package:flutter/material.dart';

class CircleAnimation extends StatefulWidget{
  const CircleAnimation({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CircleAnimation();
  }
}

class _CircleAnimation extends State<CircleAnimation>with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationcontroller;

  @override
  void initState() {
    animationcontroller = AnimationController(vsync: this, duration: Duration(seconds: 1));

    animationcontroller.repeat();

    animation = Tween<double>(begin: 0, end:250).animate(animationcontroller);

    animation.addListener(() {
      setState(() { });
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Circle Animation"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        transformAlignment: Alignment.center,
        padding:EdgeInsets.all(20),
        alignment:Alignment.center,
        height:300,
        child:Container(
          decoration: BoxDecoration(
              shape:BoxShape.circle,
              color:Colors.deepOrangeAccent
          ),
          height:animation.value, //value from animation controller
          width: animation.value, //value from animation controller
        ),
      ),
    );
  }
}