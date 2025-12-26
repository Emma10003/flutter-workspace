import 'package:flutter/material.dart';
import 'package:flutter_workspace/widgets/custom_app_bar.dart';
import 'package:go_router/go_router.dart';

/*
StatelessWidget = 정적인 위젯으로, 페이지의 변화가 없이 단순 CSS나 데이터 확인.

StatefulWidget  = 동적인 위젯으로, 페이지 내부에 데이터 변동이 있을 경우 사용하는 위젯.
 */
class CountScreen extends StatefulWidget {
  const CountScreen({super.key});  // 생성자로, CountScreen 객체를 외부에서 호출하여 사용할 때 필요.

  @override
  /*
  State           : 변하는 데이터를 관리하는 상태 클래스.
  CountScreen        : CountScreen 이라는 위젯의 상태.
  State<CountScreen> : CountScreen 의 위젯 상태를 담당하는 클래스.

  createState()   : 상태를 만드는 함수.

  flutter가 변수관리와 화면그리기를 분리하여 앱 관리를 유용하게 할 수 있도록 하는 기능.
  State<CountScreen> createState() => /*return*/ _CountScreenState();
  -> 필수가 아니고, 한 번에 하나의 class에서 작성 가능하나 추후 에러 발생.
  why?
  - 변수 데이터 로직 꼬임,
  - 변수와 화면을 분리함으로써 매번 화면 UI를 호출해야 하는 상황이 발생한다.
    하지만 현재와 같이 상태와 UI를 분리하는 코드를 작성하면
    화면은 그대로 존재하는 채로 데이터만 변경되고, 변경된 데이터가 반영된 상태로 화면 유지 가능.
   */
  State<CountScreen> createState() => /*return*/ _CountScreenState();
}

// 모든 함수와 클래스 변수이름 앞에 _ 를 붙이면 모두 private!
// 이 화면 안에서만 사용되는 클래스.
class _CountScreenState extends State<CountScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 개발자가 만들어낸 상단바가 아니라, 구글 flutter 개발자가 만들어낸 상단바.
      // 각 상단바에는 title을 이용해서 어떤 페이지인지 표기 가능.
      appBar: AppBar(
        title: Text('숫자 증가/감소/초기화 예제'),
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () => context.go('/'),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('버튼을 눌러보세요'),
            SizedBox(height: 20),
            Text(
              '$number',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 20),
            ElevatedButton(
              // 모든 함수에서는 한 줄 코드 작성 시 중괄호{} 생략 가능.
              // 다수의 코드 작성 시에는 중괄호{}를 필수로 작성한 후 내부에 코드 작성!
                onPressed: () {
                  setState(() {
                    number = number + 1;  // 숫자를 1씩 증가
                  });
                },
                child: Text('숫자 올리기')
            ),
            SizedBox(height: 10),
            /*
            숫자 내리기 버튼 추가
            ElevatedButton(),
            숫자 초기화 버튼 추가
            ElevatedButton(),
             */
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = number - 1;
                  });
                },
                child: Text('숫자 내리기')
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = 0;
                  });
                },
                child: Text('숫자 초기화')
            )
          ],
        ),
      ),
    );
  }
}