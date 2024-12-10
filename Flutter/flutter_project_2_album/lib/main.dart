import "package:flutter/material.dart";
import "package:flutter_project_2_album/shuffle_song_screen.dart";

void main() {
  runApp(const ShuffleSongApp());
}

class ShuffleSongApp extends StatelessWidget {
  const ShuffleSongApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Shuffle Song App",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ShuffleSongScreen());
  }
}