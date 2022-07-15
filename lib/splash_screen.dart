//import 'package:flutter/material.dart';
//import 'package:selection_menu/home_screen.dart';
//import 'package:splashscreen/splashscreen.dart';
//import 'package:selection_menu/login_screen.dart';

//class SplashScreenPage extends StatelessWidget {
//@override
//Widget build(BuildContext context) {
//return new SplashScreen(
//seconds: 5, //mengatur waktu
//navigateAfterSeconds: LoginScreen(),
//title: new Text('Salero'),
//image: Image.asset('assets/images/salero.png'),
//photoSize: 170.0,
//);
//}
//}

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:selection_menu/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/images/salero.png'),
      logoSize: 170,

      //title: Text(
      //" ",
      //style: TextStyle(
      //fontSize: 18,
      //fontWeight: FontWeight.bold,
      //),
      //),
      backgroundColor: Colors.grey.shade100,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: LoginScreen(),
      durationInSeconds: 5,
    );
  }
}
