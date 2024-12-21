import 'package:flutter/material.dart';
import 'package:onsemiro/screens/test_screens.dart';

class JoinPatientsScreen extends StatelessWidget {
  const JoinPatientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: true,
      body: const JoinPatientsForm(
        title: "초대 코드",
        hintText: "초대코드를 입력하세요",
        nextScreen: JoinPatientsNameScreen(),
      ),
    );
  }
}

class JoinPatientsNameScreen extends StatelessWidget {
  const JoinPatientsNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: true,
      body: const JoinPatientsForm(
        title: "이름",
        hintText: "이름을 입력하세요",
        nextScreen: TestScreens(),
      ),
    );
  }
}

class JoinPatientsForm extends StatelessWidget {
  final String title;
  final String hintText;
  final Widget? nextScreen;

  const JoinPatientsForm({
    required this.title,
    required this.hintText,
    this.nextScreen,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
            ),
          ),
          const Spacer(),
          if (nextScreen != null)
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => nextScreen!),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(333, 50),
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFFFDE047),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "다음",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
