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
  final PageController _pageController = PageController(); // PageView 컨트롤러

  final List<Widget> _pages = [
    MainUi(), // 메인 화면
    LocationUi(),
    KickUi(), // 추억 회상
    BrainUi(),
    ProfileUi(),
  ];

  @override
  void dispose() {
    _pageController.dispose(); // 리소스 정리
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 페이지 내용
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: _pages,
          ),
          // 왼쪽 상단 이미지
          Positioned(
            top: 20, // 상단 여백
            left: 20, // 왼쪽 여백
            child: SizedBox(
              width: 150, // 원하는 가로 크기 설정
              height: 150, // 원하는 세로 크기 설정
              child: Image.asset(
                'assets/온새미로고.png', // 이미지 경로
                fit: BoxFit.contain, // 이미지의 비율을 유지하며 크기를 맞춤
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFFDE047), // 선택된 아이템 색상 설정
        unselectedItemColor: Colors.black, // 선택되지 않은 아이템 색상
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // 인덱스 업데이트
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home, // 메인 화면 아이콘
            ),
            label: '메인 화면',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pin_drop,
            ),
            label: '위치 공유',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timelapse, // 추억 회상 아이콘
            ),
            label: '추억 회상',
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
    );
  }
}
