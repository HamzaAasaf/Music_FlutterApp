import 'package:flutter/material.dart';

class Recentcard extends StatelessWidget {
  Recentcard({
    super.key,
    required this.name,
    required this.imagepath,
    required this.musicname,
  });
  final String name;
  final String imagepath;
  final String musicname;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imagepath)),
          SizedBox(height: 3),
          Text(
            musicname,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,

              fontFamily: 'Orbitron',
            ),
          ),
          SizedBox(height: 3),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,

              fontFamily: 'Orbitron',
            ),
          ),
        ],
      ),
    );
  }
}
