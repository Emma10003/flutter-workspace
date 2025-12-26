import 'package:flutter/material.dart';
import 'package:flutter_workspace/basics/IntroApp.dart';
import 'package:flutter_workspace/basics/count_screen.dart';
import 'package:flutter_workspace/basics/for_screen.dart';
import 'package:flutter_workspace/basics/if_screen.dart';
import 'package:flutter_workspace/basics/while_screen.dart';
import 'package:flutter_workspace/screens/main_screen.dart';
import 'package:go_router/go_router.dart';

import 'basics/mbti_intro_screen.dart';
import 'basics/mbti_question_screen.dart';
import 'basics/mbti_result_screen.dart';
// google 에서 기본으로 제공하는 예쁜 css 테마 사용
// 개발자가 만들어놓았고, 원하는 디자인이 있다면 삭제
// 되도록이면 초반에는 유지.

/*
 * main.dart        = 앱 시작점
 * main_screen.dart = 메인 화면 조립
 * custom_app_bar   = 상단 바
 * main_body        = 본문 내용
 * custom_bottom    = 하단 메뉴
 * custom_fab       = + 버튼
 * custom_drawer    = 사이드 메뉴
 */


/*
 * flutter는 비공개변수와 공개변수를 언더바(_)로 구분
 * _변수명: private, 변수명: public
 * Private(_router) : 같은 파일 내에서만 접근 가능.
 *                    다른 파일에서는 이 변수를 사용할 수 없음.
 *                    외부에 노출할 필요 없는 내부 구현.
 *
 * Public( router ) : 다른 파일에서도 import 하면 접근 가능.
 *                    외부에 공개되는 변수.
 * GoRouter 설정
 * GoRouter 생성자를 이용해 객체를 생성하고
 * _router 변수명에 저장.
 */
// 아래 하위 코드에서 _router 내부에 존재하는 데이터 수정 불가! 상수 처리하고
// 외부에서 직접적으로 접근할 수 없도록 비공개 처리한 private 변수.
/*
아래 _router 와 router 변수는 각각 다른 상수 처리
router 변수는 외부 코딩에서 사용 가능한 상수.

final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path:'/',
          builder: (context, state) => const MainScreen()
      )
    ]
);

_router 변수는 동일 파일 내의 코딩에서만 사용 가능한 비공개 상수.
*/

final GoRouter _router = GoRouter(
  // initialLocation: 기본 메인 주소 = 앱이 처음 시작될 때 이동할 기본 경로 설정
  initialLocation: '/',
  // routes: 앱에서 사용할 모든 경로(화면)을 정의하는 리스트 작성
    /*
    builder: (context, state) => const MainScreen()),

    고객님 path:'/' 이 경로로 이동하시면
    builder 이런 화면이 보일 거예요.
    context = App에서 각 화면이 어디에 존재하는지 알려주는 주소.
    state   = URL에서 가져온 추가 정보들을 담고 있는 변수. 보통은 null 상태.
              나중에는 id값이나 로그인한 데이터 값을 담을 수 있다.
              state.params['id'] 와 같은 형태로 변형하여 사용.
     */
    /*
     * GoRoute 설정을 진행하면 프로젝트를 다시 시작해야 한다.
     */
  routes: [
    GoRoute(
        path: "/",
        builder: (context, state) => const MainScreen()
    ),
    GoRoute(
        path: "/if",
        builder: (context, state) => const IfScreen()
    ),
    GoRoute(
        path: "/for",
        builder: (context, state) => const ForScreen()
    ),
    GoRoute(
        path: "/count",
        builder: (context, state) => const CountScreen()
    ),
    GoRoute(
        path: "/while",
        builder: (context, state) => const WhileScreen()
    ),
    GoRoute(
      path: '/mbti',
      builder: (context, state) => MbtiIntroScreen(),
    ),
    GoRoute(
      path: '/mbti/question',
      builder: (context, state) => MbtiQuestionScreen(),
    ),
    GoRoute(
      path: '/mbti/result',
      builder: (context, state) => MbtiResultScreen(),
    ),
  ]
);

void main() {
  // 메인으로 시작할 객체 명칭 선택
  // 1. 앱을 실행하면 이 함수가 제일 먼저 실행됨.
  runApp(CustomIntroApp());
}

class CustomIntroApp extends StatelessWidget {
  const CustomIntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title:'Flutter 기초 문법'
    );
  }
}