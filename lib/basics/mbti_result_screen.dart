import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MbtiResultScreen extends StatelessWidget {
  const MbtiResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("검사 결과"),
        backgroundColor: Colors.purple,
        leading: IconButton(
            onPressed: () => context.go('/'),
            icon: const Icon(Icons.arrow_back)
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('당신의 MBTI는?',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('ENFP',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                )
              ),
            ),
            SizedBox(height: 30),
            Text('재기발랄한 활동가',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 10),
            Text('열정적이고 창의적인 성격입니다.',
              style: TextStyle(fontSize: 18)
            ),
            Text('자유로운 영혼의 소유자입니다!',
                style: TextStyle(fontSize: 18)
            ),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () => context.go('/'),
                child: Text('처음으로',
                  style: TextStyle(fontSize: 20, color: Colors.purple)
                ),
            ),
          ],
        )
      ),

      backgroundColor: Colors.purple[50],
    );
  }
}