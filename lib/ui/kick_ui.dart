import 'package:flutter/material.dart';

class KickUi extends StatelessWidget {
  const KickUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
          children: [
            SizedBox(
              height: 120,
            ),
            Divider(),
            Text(
              "2022년 10월 11일",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/단풍.jpg"),
            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "생각나는 단어를 적어주세요", // 힌트 텍스트 추가
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
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                // 로그인 로직 추가
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(355, 50),
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFFFDE047), // 텍스트 색상
                padding:
                    EdgeInsets.symmetric(horizontal: 50, vertical: 15), // 패딩 설정
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // 모서리 둥글게
                ),
              ),
              child: const Text(
                "제출하기",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
