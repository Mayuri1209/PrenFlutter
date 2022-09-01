import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:preneurup/screens/Auth/choice.dart';
import 'package:preneurup/screens/Auth/loginPage.dart';
import 'package:preneurup/screens/Auth/otp.dart';
import 'package:preneurup/screens/Auth/signup.dart';
import 'package:preneurup/screens/Post/navigation.dart';
import 'package:preneurup/screens/Post/post_image.dart';
import 'package:preneurup/screens/home_screen/home_screen.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTimer();
    // _navigatetohome();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, loginRoute());
  }

  loginRoute() {
    Navigator.pushReplacement(
        context,
        //MaterialPageRoute(builder: (context) => NavigationMenu(title: 'Post')));
        MaterialPageRoute(builder: (context) => LoginPage()));
  }

  // _navigatetohome() async {
  //   await Future.delayed(Duration(milliseconds: 3000), () {});
  //   Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => MyHomePage(
  //                 title: 'Feed Page',
  //               )));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "Asset/Image/pren.png",
            height: 250,
          ),
          Text(
            "Find perfect companion for your StartUp.",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
