import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MbtiQuestionScreen extends StatelessWidget {
  const MbtiQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MBTI 검사"),
        backgroundColor: Colors.purple,
        leading: IconButton(
            onPressed: () => context.go('/mbti'),
            icon: const Icon(Icons.arrow_back)
        )
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('질문 1/4',
              style: TextStyle(fontSize: 24, color: Colors.grey)
            ),
            SizedBox(height: 30),
            Text('사람들과 어울리는 것을 좋아하나요?',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () => context.go('/mbti/result'),
                child: Text('예',
                  style: TextStyle(fontSize: 22, color: Colors.purple)
                ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => context.go('/mbti/result'),
                child: Text('아니오',
                  style: TextStyle(fontSize: 22, color: Colors.purple)
                ),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}