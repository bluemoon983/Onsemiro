import 'package:flutter/material.dart';
import 'package:onsemiro/ui/profile_ui.dart';

class ProfileCorrectionUi extends StatelessWidget {
  const ProfileCorrectionUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 전체 정렬 왼쪽으로 설정
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80, // 원형 아바타 크기
                  backgroundImage: AssetImage("assets/Ralo.png"), // 이미지 경로
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: const Text(
                  '박찬호', // 사용자 이름
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "이메일",
                textAlign: TextAlign.left, // 텍스트 왼쪽 정렬
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "email", // 힌트 텍스트 추가
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
              const SizedBox(height: 20),
              Text(
                "비밀번호",
                textAlign: TextAlign.left, // 텍스트 왼쪽 정렬
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "password", // 힌트 텍스트 추가
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
              const SizedBox(height: 20),
              Text(
                "초대코드",
                textAlign: TextAlign.left, // 텍스트 왼쪽 정렬
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "15575833", // 힌트 텍스트 추가
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
              SizedBox(
                height: 50,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileUi(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(355, 50),
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFFFDE047), // 텍스트 색상
                    padding: EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15), // 패딩 설정
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // 모서리 둥글게
                    ),
                  ),
                  child: const Text(
                    "수정",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
