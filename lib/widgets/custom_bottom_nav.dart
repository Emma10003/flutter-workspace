import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(  // Navigation 은 무조건 2개 이상이어야 함.
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: '홈'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: '검색'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: '프로필'
          ),
        ]
    );
  }
}