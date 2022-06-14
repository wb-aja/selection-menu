import 'package:flutter/material.dart';
import 'package:selection_menu/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:selection_menu/login_screen.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5, //mengatur waktu
      navigateAfterSeconds: LoginScreen(),
      title: new Text('Rumah Makan Lamak Bana'),
      image: Image.asset('assets/images/logo.png'),
      photoSize: 150.0,
    );
  }
}
