import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MbtiIntroScreen extends StatelessWidget {
  const MbtiIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MBTI 소개"),
        backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: () => context.go('/'),
          icon: const Icon(Icons.arrow_back)
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('MBTI란?',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 20),
            Text('MBTI는 성격 유형 검사입니다.',
              style: TextStyle(fontSize: 18)
            ),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () => context.go('/mbti/question'),
                child: Text('검사 시작',
                  style: TextStyle(fontSize: 20, color: Colors.purple)
                ),
            )
          ]
        ),
      ),

      backgroundColor: Colors.purple[50],
    );
  }
}