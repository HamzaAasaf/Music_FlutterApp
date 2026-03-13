import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});
  double volvalue = 1;
  double speed = 1;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await player.play(AssetSource('music/ye.mp3'));
              },
              child: Text('Play Music'),
            ),
            ElevatedButton(
              onPressed: () async {
                await player.pause();
              },
              child: Text('Pause Music'),
            ),
            ElevatedButton(
              onPressed: () async {
                await player.setVolume(0.5);
              },
              child: Text('0.5 Volume'),
            ),
            ElevatedButton(
              onPressed: () async {
                await player.setPlaybackRate(2);
              },
              child: Text('Speed'),
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  widget.speed = 1;
                  player.setPlaybackRate(widget.speed);
                });
              },
              child: Text('Normal Speed'),
            ),
            Slider(
              value: widget.volvalue,
              onChanged: (v) {
                setState(() {
                  widget.volvalue = v;
                  player.setVolume(widget.volvalue);
                });
              },
            ),
            Slider(
              max: 2,
              min: 0.1,
              value: widget.speed,
              onChanged: (v) {
                setState(() {
                  widget.speed = v;
                  player.setPlaybackRate(widget.speed);
                  print(widget.speed);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
