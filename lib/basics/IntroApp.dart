import 'package:flutter/material.dart';

// extends StatelessWidget = 화면에 무언가를 그리고 싶다면 필수로 작성. (UI 작성하는 곳! 기능에는 X)
//  -> IntroApp 은 그냥 평범한 코드가 아니라 화면에 보여질 UI 코드라는 것을 표기.
class IntroApp extends StatelessWidget {
  // StatelessWidget 에서 IntroApp 파일을 관리하기 위해 작성하는 기본 세팅.
  const IntroApp({super.key});

  // 덮어쓰기, IntroApp 에서 만든 화면 그리기 방식으로 화면을 보여주겠다.
  @override   // BuildContext : '나는 전체 앱의 어느 위치에 있다'는 정보를 담고 있다.
  Widget build(BuildContext context) {  // 화면 그리기 함수 시작!
    // 에러 나는 코드   return const Scaffold( : 건물 뼈대와 같은 코드.
    // const 를 언제 붙이고 언제 떼는가? 전체적인 구조는 어떻게 되는가?
    return MaterialApp(
      // 디버그 띠 없애기
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Scaffold 위치"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            '메인 화면 영역',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(  // Navigation 은 무조건 2개 이상이어야 함.
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
        ),
        /*
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Center (
              child: Text(
                  'IntroApp is working!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                )
              ),
            )
          ],
        ),
        */
        
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              // 버튼 클릭 시 동작하는 것
        },
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            children: const[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Text(
                  '메뉴',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('홈'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('설정'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('정보'),
              ),
            ],
          ),
        ),

        backgroundColor: Colors.grey[200],
      )
    );
  }
}