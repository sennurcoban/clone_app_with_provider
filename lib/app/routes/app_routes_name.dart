import 'package:flutter/material.dart';
import 'package:good_rx/views/getstarted/signup_screen.dart';
import 'package:good_rx/views/homescreen/home_screen.dart';
import 'package:good_rx/views/initial/onboarding_screen.dart';
import 'package:good_rx/views/homescreen/register_screen.dart';
import 'package:good_rx/views/splash_screen/splash_screen.dart';

class AppRoutesNames {
  static const String initialRoute ="/";
  static const String onboardingView ="/onboardingView";
  static const String singUpView ="/singUpView";
  static const String registerView ="/registerView";
  static const String homeView ="/homeView";
  // static const String initialRoute ="/";

  static Map<String, WidgetBuilder> get appRoutes {
    return {
      AppRoutesNames.initialRoute:(context) => SplashScreen(),
      AppRoutesNames.onboardingView:(context) => OnBoardingScreen(),
      AppRoutesNames.singUpView:(context) => SignUpScreen(),
      AppRoutesNames.registerView:(context) => RegisterScreen(),
      AppRoutesNames.homeView:(context) => HomeScreen(),


    };
  }

}