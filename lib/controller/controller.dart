import 'package:flutter/material.dart';
import 'package:music_player/core/resources/routes_manager.dart';

class Controller {
  static void navigateToOnboarding(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesNames.konboardingScreen);
    });
  }

  static void navigateToHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, RoutesNames.khomeScreen);
  }
}
