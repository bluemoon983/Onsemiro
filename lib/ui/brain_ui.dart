import 'package:flutter/material.dart';
import 'package:onsemiro/screens/drawing_screens.dart';
import 'package:onsemiro/screens/dustks_screens.dart';
import 'package:onsemiro/screens/half_screens.dart';
import 'package:onsemiro/screens/song_screens.dart';
import 'package:onsemiro/screens/word_screens.dart';
import 'package:onsemiro/screens/writing_screens.dart';

class BrainUi extends StatelessWidget {
  const BrainUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 120),
            Divider(),
            SizedBox(height: 30),
            // 첫 번째 Row (색칠하기, 연산하기)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DrawingScreens()),
                        );
                      },
                      child: Image.asset("assets/Frame 201.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "색칠 하기",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DustksScreens()),
                        );
                      },
                      child: Image.asset("assets/Frame 202.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "연산 하기",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // 두 번째 Row (그림 분류하기, 단어 맞추기)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HalfScreens()),
                        );
                      },
                      child: Image.asset("assets/Frame 203.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "그림 분류하기",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WordScreens()),
                        );
                      },
                      child: Image.asset("assets/Frame 204.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "단어 맞추기",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // 세 번째 Row (노래 듣기, 일기쓰기)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SongScreens()),
                        );
                      },
                      child: Image.asset("assets/Frame 205.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "노래 듣기",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WritingScreens()),
                        );
                      },
                      child: Image.asset("assets/Frame 206.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "일기 쓰기",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
