import 'package:flutter/material.dart';

class HalfScreens extends StatelessWidget {
  const HalfScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(
            "assets/절반.png",
          ),
        ],
      ),
    );
  }
}
