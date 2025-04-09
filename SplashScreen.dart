/*import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
 late Animation<double> animtion;
 late AnimationController controller;
 @override
  void initState() {
    super.initState();
     controller = new AnimationController(
        vsync: this,
        duration:Duration(seconds: 2
        ))
      ..forward();
    animtion = new CurvedAnimation(parent: controller, curve: Curves.linear);
    Timer(Duration(seconds: 4), () {
      Get.offNamed(RoutePage.GetLogin());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
              scale: animtion,
              child: CircleAvatar(
                maxRadius: 100,
                backgroundImage: AssetImage("assets/logo22.jpg"),
                  )),
          SizedBox(height: 20,),
          Center(child: Image.asset("assets/name.png"),)
        ],
      ),
    );
  }
}
*/
