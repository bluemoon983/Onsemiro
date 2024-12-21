import 'package:flutter/material.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 고정된 타입 설정
        selectedItemColor: Colors.black, // 선택된 아이템 색상
        unselectedItemColor: Colors.black, // 선택되지 않은 아이템 색상
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timelapse,
              color: Colors.black,
            ),
            label: '우리만의 킥',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pin_drop,
              color: Colors.black,
            ),
            label: '위치 공유',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: '메인 화면',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book,
              color: Colors.black,
            ),
            label: '메시지',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: '프로필',
          ),
        ],
      ),
      body: Column(
        children: [
          Text("ㅂㅅ"),
        ],
      ),
    );
  }
}
