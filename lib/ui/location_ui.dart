import 'package:flutter/material.dart';

class LocationUi extends StatelessWidget {
  const LocationUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Divider(),
            Image.asset("assets/Frame 198.png"),
            Image.asset("assets/보호.png"),
          ],
        ),
      ),
    );
  }
}
