import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// dart 라는 언어는 Java + JavaScript + C++ 에서 유용하다 판단되는 예약어와 기능을 조합한 언어.
class ForScreen extends StatefulWidget {
  const ForScreen({super.key});

  @override
  State<ForScreen> createState() => _ForScreenState();
}

class _ForScreenState extends State<ForScreen> {
  // dart 으로 js와 같은 기능 관련 작성
  // 변수 선언이나 함수 선언은 Widget 전에 작성 가능.
  List<String> items = ['사과', '바나나', '포도', '수박', '딸기'];

  // UI 관련 작성
  // 위젯 안에서는 변수, 함수 선언 불가.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('For 반복문 확인하기'),
        backgroundColor: Colors.yellow,
        leading: IconButton(
            onPressed: () => context.go('/'),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('반복문 화면'),

              // dart 언어는 중간중간 기능에 관련된 코드를 기술할 수 있다.
              // for문은 Jaa 에서 사용하는 for문을 동일하게 사용
              for(int i=0; i<5; i++)
                // Java에서는 for문에 관련된 출력을 System.out.println() 으로 확인했지만
                // dart 의 경우 UI 관련된 프레임워크이기 때문에
                // System.out.println() 대신 Container 와 같은 UI 관련 클래스로 화면에서 데이터 확인.
                Container(
                  margin: EdgeInsets.all(40),
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],  // 텍스트가 아니라 컨테이너 클래스에 색상을 제공
                  child: Text('숫자 인덱스: $i'),
                ),
              // Divider = <hr>
              // height   : 상위 클래스와 얼만큼 높이 차이가 있는가(간격)
              // thickness: 가로 한 줄의 크기
              Divider(
                height: 40,
                thickness: 5,
                color: Colors.yellow[200],
              ),
              Text('리스트 데이터 반복문 = 숫자가 아닌 리스트에 작성된 문자열 데이터 반복하여 출력'),

              // 리스트 데이터를 이용한 반복문 (for-in)
              // Controller 에서 List<Product> 데이터를 전달받음 (DB에 있는 모든 상품들을)
              // map 대신 사용하는 방법.
              //
              for(var item in items)
                Container(
                  child: Text("과일 이름: $item"),
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(40),
                ),
            ],
          ),
        ),
      ),
    );
  }


}