import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
      lowerBound: 0,
      upperBound: 1,
    );
    animationController.repeat();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacementNamed('/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RotationTransition(
        turns: animationController,
        child: Center(
          child: Image.asset(
            "assets/images/logo.png",
            height: 180,
          ),
        ),
      ),
    );
  }
}
