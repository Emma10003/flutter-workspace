import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WhileScreen extends StatefulWidget {
  const WhileScreen({super.key});

  @override
  State<WhileScreen> createState() => _WhileScreenState();
}

class _WhileScreenState extends State<WhileScreen> {
  // 변수나 함수 선언
  // 기능 작성

  /*
    [예제 1번]
    생성자에서 필수 매개변수를 사용하지 않고,
    일반적으로 데이터를 전역변수에 추가하는 방법
   */
  int count = 0;  // 전역변수

  // 반환값이 없는 기능
  void runWhile(){
    int temp = 0;  // run 함수 내부에서만 사용될 수 있는 지역변수
    // 지역변수는 runWhile() 함수 내부에서만 알고있는 변수공간의 명칭.
    // runWhile() 함수를 탈출하고 나면 다른 곳에서는 temp 라는 명칭을 알지 못함.
    // 전역변수인 count 변수명에 temp의 값을 전달하여
    // 전체적으로 class 내부에서 temp의 데이터를 사용할 수 있도록 설정.

    while(temp < 5) {
      temp++;  // while 에서 temp가 5가 될 때 까지 출력
    }

    // 생성자를 사용하지 않고 데이터를 State 형태로 저장하는 방법
    // SpringBoot 에서 Product p = new Product(); 생성자와 비슷한 개념.
    setState(() {
      count = temp;
    });
  }

  /*
    [예제 2번]
    initState를 사용해서 생성자를 통하여
    데이터를 전역변수에 추가하는 방법
   */
  int initCount = 0;

  /*
   * initState : 위젯이 생성될 때 단 한 번만 실행되는 초기화 메서드
   * 용도 : API 호출, 리스너 등록, 컨트롤러 초기화 등 초기작업 설정 시 사용.
   * 카운트와 같은 형태에서는 사용하지 않음.
   *
   * 클릭했을 때 값 변동의 경우에는 예제 1번 방법 사용하기!
   */
  // ctrl + o
  @override
  void initState() {
    super.initState();

    while(initCount < 3) {
      // print 라는 것은 개발자를 위해 출력하는 함수이기 때문에
      // debugPrint = 문제가 있거나, 데이터를 확인하기 위한 출력기능 이라는 명칭 사용.
      debugPrint('initCount: ${initCount}');  // Java의 System.out.println() 같은 기능
      initCount++;
    }
  }


  // widget css UI 작성
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('For 반복문 확인하기'),
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () => context.go('/'),
            icon: const Icon(Icons.arrow_back)),
      ),
      /* Center 내부에 Column 형식으로 만든 후, 클릭하여 count를 Text로 출력 가능하게 설정. */
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: runWhile,
              child: Text('while 실행하기 - 1번 방법')
            ),
            SizedBox(height: 20),

            Text('$count'),
            SizedBox(height: 20),

            Divider(
              height: 40,
              thickness: 1,
              color: Colors.green[200],
            ),

            Text('버튼 클릭 없이 자동으로 증가하는 while문'),
            Text('initCount = $initCount'),
            SizedBox(height: 20),

            ElevatedButton(
                onPressed: initState,
                child: Text('while 실행하기 - 2번 방법'),
            ),
            SizedBox(height: 20),

            Text('$initCount'),
            SizedBox(height: 20),

            Text('버튼 클릭을 통하여 init Count 출력: $initCount'),
          ],
        )
      )
    );
  }
}
