import 'package:flutter/material.dart';
import 'package:onsemiro/screens/login_screens.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('마이페이지 화면'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreens()),
              );
            },
            child: Text('로그아웃'),
          ),
        ],
      ),
    );
  }
}
