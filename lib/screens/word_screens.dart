import 'package:flutter/material.dart';
import 'package:onsemiro/screens/main_screens.dart';

class WordScreens extends StatelessWidget {
  const WordScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Divider(),
          Image.asset("assets/Frame 216.png"),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.0), // 좌우 여백 설정
            child: TextField(
              decoration: InputDecoration(
                hintText: "정답을 입력하세요", // 힌트 텍스트 추가
                enabledBorder: UnderlineInputBorder(
                  // 밑선 색 변경
                  borderSide: BorderSide(color: Colors.yellow), // 원하는 색상으로 변경
                ),
                focusedBorder: UnderlineInputBorder(
                  // 포커스 시 밑선 색 변경
                  borderSide: BorderSide(color: Colors.yellow), // 원하는 색상으로 변경
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
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
          ),
        ],
      ),
    );
  }
}
