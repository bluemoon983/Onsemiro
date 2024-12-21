import 'package:flutter/material.dart';
import 'main_screens.dart'; // MainScreens 위젯을 import

class TestScreens extends StatefulWidget {
  const TestScreens({super.key});

  @override
  _TestScreensState createState() => _TestScreensState();
}

class _TestScreensState extends State<TestScreens> {
  // 설문 항목 리스트
  final List<String> questions = [
    "오늘이 몇 월이고, 무슨 요일인지를 잘 모른다",
    "자기가 놔둔 물건을 찾지 못한다",
    "같은 질문을 반복해서 한다",
    "약속을 하고서 잊어버린다",
    "물건을 가지러 갔다가 잊어버리고 그냥 온다",
    "물건이나, 사람의 이름을 대기가 힘들어 머뭇거린다",
    "대화 중 내용이 이해되지 않아 반복해서 물어본다",
    "길을 잃거나 헤맨 적이 있다",
    "예전에 비해서 계산능력이 떨어졌다",
    "예: 물건값이나 거스름돈 계산을 못한다",
    "예전에 비해 성격이 변했다",
    "이전에 잘 다루던 기구의 사용이 서툴러졌다",
    "예전에 비해 방이나 집안의 정리 정돈을 하지 못한다",
    "상황에 맞게 스스로 옷을 선택하여 입지 못한다",
    "혼자 대중교통 수단을 이용하여 목적지에 가기 힘들다",
    "내복이나 옷이 더러워져도 갈아입지 않으려고 한다"
  ];

  // 사용자 답변을 저장할 리스트
  List<String> answers = List.filled(16, '아니다');

  // 답변에 따른 점수 계산
  int getScore(String answer) {
    switch (answer) {
      case '아니다':
        return 0;
      case '가끔 그렇다':
        return 1;
      case '자주 그렇다':
        return 2;
      default:
        return 0;
    }
  }

  // 설문 결과 계산
  String calculateResult() {
    int totalScore = 0;
    for (var answer in answers) {
      totalScore += getScore(answer);
    }

    if (totalScore >= 6) {
      return '설문 결과 기억력 저하가 의심되오니 전문의 상담이 필요합니다.';
    } else {
      return '설문 결과 정상입니다.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기억력 설문'),
        backgroundColor: const Color(0xFFFDE047), // AppBar 색상 강조
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text(questions[index]),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<String>(
                            title: const Text(
                              '아니다',
                              style:
                                  TextStyle(color: Colors.black), // 텍스트 색상 강조
                            ),
                            value: '아니다',
                            groupValue: answers[index],
                            onChanged: (value) {
                              setState(() {
                                answers[index] = value!;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: const Text(
                              '가끔 그렇다',
                              style:
                                  TextStyle(color: Colors.black), // 텍스트 색상 강조
                            ),
                            value: '가끔 그렇다',
                            groupValue: answers[index],
                            onChanged: (value) {
                              setState(() {
                                answers[index] = value!;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: const Text(
                              '자주 그렇다',
                              style:
                                  TextStyle(color: Colors.black), // 텍스트 색상 강조
                            ),
                            value: '자주 그렇다',
                            groupValue: answers[index],
                            onChanged: (value) {
                              setState(() {
                                answers[index] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String result = calculateResult();
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        '설문 결과',
                        style: TextStyle(color: Colors.black), // 다이얼로그 제목 색상 강조
                      ),
                      content: Text(result),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainScreens()),
                            );
                          },
                          child: const Text('확인'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(333, 50),
                backgroundColor: const Color(0xFFFDE047), // 버튼 색상 강조
                foregroundColor: Colors.black, // 버튼 텍스트 색상
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                '결과 보기',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
