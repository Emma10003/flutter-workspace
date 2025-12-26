import 'package:flutter/material.dart';

class CustomFab extends StatelessWidget {
  const CustomFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        // 버튼 클릭 시 동작하는 것
      },
      child: const Icon(Icons.add),
      backgroundColor: Colors.blue,
    );
  }
}