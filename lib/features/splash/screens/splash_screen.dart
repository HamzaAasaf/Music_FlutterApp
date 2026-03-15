import 'package:flutter/material.dart';
import 'package:music_player/controller/controller.dart';
import 'package:music_player/core/resources/colors_manager.dart';
import 'package:music_player/core/resources/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Controller.navigateToOnboarding(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 54, 23, 80),
              const Color.fromARGB(255, 104, 61, 139),
              ColorsManager.kspashlight,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/sp.png',

            color: Colors.white,
            scale: 1.5,
          ),
        ),
      ),
    );
  }
}
