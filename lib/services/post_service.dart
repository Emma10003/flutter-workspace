import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/Post.dart';

class PostService {
  static String baseUrl = 'http://localhost:9000';

  // 이미지 URL 만들기
  static String getImageUrl(String path) {
    return baseUrl + path;
  }

  // 어플에서는 백엔드에서 데이터를 가져온다는 것이 기본 세팅은 아님.
  // 백엔드 연결 없이 핸드폰 내부에 localStorage 처럼 데이터 저장 공간을 만들어서
  // 소비자가 데이터를 관리하고, 핸드폰에서 제공하는 게임이나 todoList와 같은 작업을 하는 어플이
  // 기본이기 때문.
  // SpringBoot나 dart 는 dependencies 에 http web 연결 관련된 모듈을 설치해야 백엔드와 연결 가능!
  // http의 import 가 보이지 않을 때는
  // pubspec.yaml 로 접속하여 dependencies에 http 관련 모듈 세팅이 존재하는지 확인.
  // 게시물 백엔드에서 어플로 가져오기
  static Future<List<Post>> getPosts() async {
    debugPrint('API 호출 시작: $baseUrl/api/posts');

    var res = await http.get(Uri.parse('$baseUrl/api/posts'));
    debugPrint('응답 상태코드: ${res.statusCode}');

    if(res.statusCode == 200) {
      // 데이터를 가져올 때 영어, 숫자 이외의 글자 깨짐 없도록 세팅
      List jsonList = json.decode(utf8.decode(res.bodyBytes));
      debugPrint('데이터 개수: ${jsonList.length}');
      debugPrint('전체 데이터: $jsonList');
      return jsonList.map((j) => Post.fromJson(j)).toList();  // map 매개변수 j에 소괄호 없으면 에러 발생함!
    } else {
      throw Exception('데이터를 불러올 수 없습니다.');
    }
  }
}