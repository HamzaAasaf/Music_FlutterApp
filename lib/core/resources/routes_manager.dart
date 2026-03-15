import 'package:flutter/material.dart';
import 'package:music_player/features/home/home_screen.dart';
import 'package:music_player/features/onboarding/onboarding.dart';
import 'package:music_player/features/splash/screens/splash_screen.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesNames.ksplashScreen: (context) => OnboardingScreen(),
    RoutesNames.konboardingScreen: (context) => SplashScreen(),
    RoutesNames.khomeScreen: (context) => HomeScreen(),
  };
}

class RoutesNames {
  static const String ksplashScreen = '/splashScreen';
  static const String konboardingScreen = '/OnboardingScreen';
  static const String khomeScreen = '/HomeScreen';
}
