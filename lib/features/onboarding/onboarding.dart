import 'package:flutter/material.dart';
import 'package:music_player/controller/controller.dart';
import 'package:music_player/core/resources/colors_manager.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
        child: Stack(
          children: [
            Positioned(
              top: 390,
              child: Image(image: AssetImage('assets/images/men.png')),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.0),

                      ColorsManager.ksplashdark.withOpacity(0.7),
                    ],
                  ),
                ),
                width: double.infinity,
                height: 300,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 100),
                Text(
                  "Find Your Favourite ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,

                    fontFamily: 'Orbitron',
                  ),
                ),
                Text(
                  "Music",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorsManager.kspashmusic,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,

                    fontFamily: 'Orbitron',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Text(
                    "Find Your Latest Favourite Music From Our Collection",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,

                      fontFamily: 'Orbitron',
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 171,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        ColorsManager.kgetstarteddark,
                        ColorsManager.kgetstartedlight,
                      ],
                    ),

                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white, width: 1),
                  ),

                  child: MaterialButton(
                    onPressed: () {
                      Controller.navigateToHome(context);
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Orbitron',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
