import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '기초 문법 연습장',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),

          ElevatedButton(
              onPressed: () => context.go("/if"),
              child: const Text(
                  "IF문 배우기",
                style: TextStyle(fontSize: 18, color: Colors.green)
              ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => context.go("/for"),
            child: const Text(
                "For문 배우기",
                style: TextStyle(fontSize: 18, color: Colors.green)
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => context.go("/count"),
            child: const Text(
                "Count문을 통해 StatefulWidget 배우기",
                style: TextStyle(fontSize: 18, color: Colors.green)
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => context.go("/while"),
            child: const Text(
                "While 배우기",
                style: TextStyle(fontSize: 18, color: Colors.green)
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => context.go("/mbti"),
            child: const Text(
                "MBTI 검사하기",
                style: TextStyle(fontSize: 18, color: Colors.green)
            ),
          ),
        ],
      )
    );
  }
}