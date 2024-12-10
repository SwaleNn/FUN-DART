import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_project_2_album/constants.dart';

class ShuffleSongScreen extends StatefulWidget {
  const ShuffleSongScreen({super.key});

  @override
  State<ShuffleSongScreen> createState() => _ShuffleSongWidgetState();
}

class _ShuffleSongWidgetState extends State<ShuffleSongScreen> {
  int _currentIndex = 0;

  void _shuffleSong() {
    Random random = Random();
    int randomIndex = random.nextInt(6);
    setState(() {
      _currentIndex = randomIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/images/spotify.png"),
                  width: 36,
                  height: 36,
                ),
                SizedBox(width: 4),
                Text(
                  "Spotify",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                width: 200,
                height: 200,
                child: Column(
                  children: [
                    Image.asset(
                      ShuffleSongConstants.albumCoverLists[_currentIndex],
                      width: 140,
                      height: 140,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      ShuffleSongConstants.songTitleList[_currentIndex],
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: IconButton(
                onPressed: _shuffleSong,
                icon: const Icon(
                  Icons.shuffle_on_rounded,
                  color: Colors.green,
                  size: 48,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
