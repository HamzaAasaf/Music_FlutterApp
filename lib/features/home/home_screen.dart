import 'package:flutter/material.dart';
import 'package:music_player/core/resources/colors_manager.dart';
import 'package:music_player/features/home/widgets/reccard.dart';
import 'package:music_player/features/home/widgets/recomendd_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ColorsManager.khomescreendark,
                ColorsManager.khomescreendark,

                ColorsManager.khomescreenlight,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB4B0E8),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Song',
                      hintStyle: TextStyle(
                        color: Colors.white70, //
                        fontSize: 16,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white70, //
                      ),
                      border: InputBorder.none, //
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    style: TextStyle(color: Colors.white), //
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Recently Played",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,

                    fontFamily: 'Orbitron',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Recentcard(
                        name: 'Selena Gomez',
                        imagepath: 'assets/images/Selena.png',
                        musicname: 'Who Says',
                      ),
                      Recentcard(
                        name: 'Justin Biber',
                        imagepath: 'assets/images/Justin.png',
                        musicname: 'Sorry',
                      ),
                      Recentcard(
                        name: 'Selena Gomez',
                        imagepath: 'assets/images/Selena.png',
                        musicname: 'Who Says',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Recommanded music",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,

                    fontFamily: 'Orbitron',
                  ),
                ),
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return RecomendedList(
                      index: index,
                      heart_color: index.isEven ? Colors.red : Colors.white,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
