import 'package:flutter/material.dart';
import 'package:onsemiro/screens/login_screens.dart';
import 'package:onsemiro/ui/profile_correction_ui.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80, // 원형 아바타 크기
              backgroundImage: AssetImage("assets/Ralo.png"), // 이미지 경로
            ),
            const SizedBox(height: 20),
            const Text(
              '박찬호', // 사용자 이름
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileCorrectionUi()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // 둥근 모서리
                ),
                backgroundColor: Color(0xFFFDE047), // 버튼 색상
                minimumSize: const Size(200, 50),
                elevation: 5, // 버튼 그림자 효과
              ),
              child: const Text(
                '프로필 수정하기',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // 로그아웃 버튼
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreens()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.red, // 빨간색으로 눈에 띄게
                minimumSize: const Size(200, 50),
                elevation: 5,
              ),
              child: const Text(
                '로그아웃',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 15),
            // 탈퇴하기 버튼
            TextButton(
              onPressed: () {
                // 탈퇴 로직 추가
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('탈퇴하기'),
            ),
          ],
        ),
      ),
    );
  }
}
