import 'package:flutter/material.dart';
import 'package:onsemiro/screens/main_screens.dart';

class DrawingScreens extends StatelessWidget {
  const DrawingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset("assets/image 2.png"),
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/색.png"),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              // 로그인 로직 추가
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainScreens(), // MainScreens로 이동
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(333, 50),
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFFFDE047), // 텍스트 색상
              padding:
                  EdgeInsets.symmetric(horizontal: 50, vertical: 15), // 패딩 설정
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // 모서리 둥글게
              ),
            ),
            child: const Text(
              "완료",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
