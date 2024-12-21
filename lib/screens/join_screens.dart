import 'package:flutter/material.dart';
import 'package:onsemiro/screens/join_guardians_screens.dart';
import 'package:onsemiro/screens/join_patients_screens.dart';

class JoinScreens extends StatelessWidget {
  const JoinScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              // 보호자 화면으로 이동
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JoinGuardiansScreen()),
              );
            },
            child: Stack(
              children: [
                Container(
                  color: Color(0xFFFEF9C3),
                  height: 329,
                  width: MediaQuery.of(context).size.width, // 화면 너비에 맞춤
                ),
                Positioned(
                  left: 30,
                  top: 25,
                  child: Text(
                    '보호자',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 20,
                  child: Image.asset(
                    'assets/보호자.png', // 이미지 경로를 지정
                    width: 136, // 이미지의 크기
                    height: 136, // 이미지의 크기
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              // 치매 환자 화면으로 이동
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JoinPatientsScreen()),
              );
            },
            child: Stack(
              children: [
                Container(
                  color: Color(0xFFFDE047),
                  height: 329,
                  width: MediaQuery.of(context).size.width, // 화면 너비에 맞춤
                ),
                Positioned(
                  left: 30,
                  top: 25,
                  child: Text(
                    '치매 환자',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 20,
                  child: Image.asset(
                    'assets/치매.png', // 이미지 경로를 지정
                    width: 136, // 이미지의 크기
                    height: 136, // 이미지의 크기
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
