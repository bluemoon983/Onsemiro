import 'package:flutter/material.dart';

class MainUi extends StatelessWidget {
  const MainUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 수평 왼쪽 정렬
          children: [
            SizedBox(
              height: 120,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Text(
              "위치 공유",
              textAlign: TextAlign.left, // 텍스트 왼쪽 정렬
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              "assets/지도.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "추억 회상",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset("assets/회상.png"),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
