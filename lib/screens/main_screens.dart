import 'package:flutter/material.dart';
import 'package:onsemiro/ui/brain_ui.dart';
import 'package:onsemiro/ui/kick_ui.dart';
import 'package:onsemiro/ui/location_ui.dart';
import 'package:onsemiro/ui/main_ui.dart';
import 'package:onsemiro/ui/profile_ui.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _currentIndex = 0; // 현재 선택된 인덱스
  final List<Widget> _pages = [
    KickUi(),
    LocationUi(),
    MainUi(),
    BrainUi(),
    ProfileUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFFDE047), // 선택된 아이템 색상 설정
        unselectedItemColor: Colors.black, // 선택되지 않은 아이템 색상
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // 인덱스 업데이트
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timelapse,
            ),
            label: '우리만의 킥',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pin_drop,
            ),
            label: '위치 공유',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '메인 화면',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book,
            ),
            label: '뇌건강 지키미',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '마이페이지',
          ),
        ],
      ),
      body: _pages[_currentIndex], // 현재 선택된 화면 표시
    );
  }
}
