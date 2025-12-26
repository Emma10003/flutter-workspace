import 'package:flutter/material.dart';
import 'dart:convert';


// ===================================
// JavaScript는     모델 따로 작성 X
// Dart 는 Java처럼 모델 따로 작성 O
// 아래와 같이 class
// Post({ required this.postId,...})
// factory Post.fromJson(Map<String, dynamic> json) {
//   return Post(...)}
// 를 작성하는 것이 기본 모델의 정의

// <JSON을 dart로 바꾸는 코드 자동완성>
// 1번 방법: 백엔드에서 RestController로 api url에서
//          데이터가 JSON 형식으로 보여져야 사용할 수 있는 방법 (백엔드 없으면 사용 불가)
// [JSON to Dart 플러그인]
// 파일 -> 설정 -> 플러그인 -> Marketplace로 접속하여
// JSON to Dart 플러그인 설치
// lib/models 폴더 우클릭
// new -> Dart Model from JSON
// 클래스 입력한 후 JSON 데이터 붙여넣고 {} 만 입력하면 자동으로 파일 완성.

// 2번 방법: 백엔드가 없어도 사용 가능한 방법
// [Dart Data Class Generator 플러그인]
// 필드만 작성 후,
// (window) Alt + insert    (Mac) Cmd + N
// Generate -> fromJson/toJson 선택하면 자동완성됨.
// Alt + insert -> 생성자 선택
// ===================================

class Post {
  int postId;
  int userId;
  String postImage;
  String postCaption;
  String postLocation;
  String createdAt;
  String userName;
  String userFullname;
  String userAvatar;
  int likeCount;
  int commentCount;



  // 생성자를 만드는 작업을 아래와 같이 작성
  // Java의 ⬇️ 이 코드와 비슷.
  // Post(int postId, String postName){
  // this.postId = postId;
  // this.postName = postName;
  // }
  /*
  Post(this.postId, this.userId, this.postImage, this.postCaption,
      this.postLocation, this.createdAt, this.userName, this.userFullname,
      this.userAvatar, this.likeCount, this.commentCount);
  */
  // Dart Data Class Generator -> 인텔리제이에서 자동으로 사용하는 플러그인으로 설정되어 있음.
  Post({
    required this.postId,
    required this.userId,
    required this.postImage,
    required this.postCaption,
    required this.postLocation,
    required this.createdAt,
    required this.userName,
    required this.userFullname,
    required this.userAvatar,
    required this.likeCount,
    required this.commentCount,
  });

  // JSON 형식 = Web 에서 사용하는 형식
  // 어플에서는 JSON 형식을 사용하려면
  // 매번 json['postId'] 와 같이 web에서 가져온 json 형식에서
  // 'postId'라는 명칭으로 지칭된 데이터를 사용하겠다는 의미로
  // 모든 변수명 앞에 json을 붙이고 대괄호[]로 표현해야 함.
  // 직접적으로 길게 작성하고 싶지 않기 때문에
  // 백엔드에서 앱으로 가져온 JSON 형태를 postId 라는 변수명칭에 대입하여
  // json[] 형식이 없어도 데이터를 표현 가능하도록 설정한 것.

  // Live Template 만들기 형식을 통해
  // 우리가 직접 alt + insert에서 생성자나 getter/setter를 클릭하면 만들어주는 기능을 만들 것.
  // 라이브 템플릿에서 변수 편집까지 끝내면 내부 코드 또한 자동으로 완성되는 템플릿 사용 가능.
  /*
  factory .fromJson(Map<String, dynamic> json) => (

  );
  */
  // fromJson 은 백엔드에서 가져온 데이터를 dart로 보여주는 형식.
  // toJson   은 어플에서 백엔드로 데이터를 저장할 때 사용하는 형식.
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      postId: json['postId'],
      userId: json['userId'],
      postImage: json['postImage'],
      postCaption: json['postCaption'],
      postLocation: json['postLocation'],
      createdAt: json['createdAt'],
      userName: json['userName'],
      userFullname: json['userFullname'],
      userAvatar: json['userAvatar'],
      likeCount: json['likeCount'],
      commentCount: json['commentCount'],
    );
  }
}