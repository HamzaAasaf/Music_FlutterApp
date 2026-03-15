import 'package:flutter/material.dart';

class RecomendedList extends StatelessWidget {
  Map<String, String> nameartist_music = {
    'Magenta Riddim': 'DJ Snake',
    "Freinds": "Anne Marie",
    'Alone': 'Marsmello',
    'New Rules': 'Dua Lipa',
    'You Belong With Me': 'Taylor Swift',
    'Hamza Asaf': 'You My',
    "Yousedd Hoi": "Googli",
    'No One': 'Good Bye',
    'New Rulest': 'Less That',
    'You Belong With Us': 'Goigig',
  };

  List<String> imagesartist = [
    'assets/images/anne.png',
    'assets/images/dj3.png',
    'assets/images/ty.jpg',
    'assets/images/anne.png',
    'assets/images/dj3.png',
    'assets/images/anne.png',
    'assets/images/dj3.png',
    'assets/images/ty.jpg',
    'assets/images/anne.png',
    'assets/images/dj3.png',
  ];
  RecomendedList({
    super.key,
    required int this.index,
    required this.heart_color,
  });
  int index;
  Color heart_color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 25,
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.heart_broken_outlined, color: heart_color),
      ),
      title: Text(
        nameartist_music.keys.elementAt(index),
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,

          fontFamily: 'Orbitron',
        ),
      ),
      subtitle: Text(
        nameartist_music.values.elementAt(index),
        style: TextStyle(
          color: Colors.white.withOpacity(0.5),
          fontSize: 12,
          fontWeight: FontWeight.w300,

          fontFamily: 'Orbitron',
        ),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(50),
        child: Image(image: AssetImage(imagesartist[index]), fit: BoxFit.fill),
      ),
    );
  }
}
