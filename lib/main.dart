import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Image(
            image: AssetImage('images/splash.png'),
          ),
          nextScreen: Screen1(),
          splashTransition: SplashTransition.rotationTransition,
        ));
  }
}
