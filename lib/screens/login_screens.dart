import 'package:flutter/material.dart';
import 'package:onsemiro/screens/join_screens.dart';
import 'package:onsemiro/screens/main_screens.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        // 전체 화면을 스크롤 가능하게 만듦
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Column 내 왼쪽 정렬
          children: [
            const SizedBox(
              height: 150,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                Image.asset(
                  "assets/온새미로.png",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35.0), // 왼쪽 여백 설정
              child: Text(
                "아이디",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0), // 좌우 여백 설정
              child: TextField(
                decoration: InputDecoration(
                  hintText: "아이디를 입력하세요", // 힌트 텍스트 추가
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
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35.0), // 왼쪽 여백 설정
              child: Text(
                "비밀번호",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0), // 좌우 여백 설정
              child: TextField(
                decoration: InputDecoration(
                  hintText: "아이디를 입력하세요", // 힌트 텍스트 추가
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
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 32,
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15), // 패딩 설정
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // 모서리 둥글게
                    ),
                  ),
                  child: const Text(
                    "로그인",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 300,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JoinScreens(),
                      ), // JoinScreens로 이동
                    );
                  },
                  child: Text(
                    "회원가입",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
