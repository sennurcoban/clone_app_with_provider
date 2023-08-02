import 'dart:async';

import 'package:flutter/material.dart';
import 'package:good_rx/views/homescreen/home_screen.dart';
import 'package:good_rx/views/initial/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => (prefs.getBool("isUserActive") ?? false) ? HomeScreen() : OnBoardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/splashscreen/splash_screen.png',fit: BoxFit.cover,),
    );
  }
}