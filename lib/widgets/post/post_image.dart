import 'package:flutter/material.dart';
import 'package:flutter_workspace/services/post_service.dart';
import '../../models/Post.dart';

class PostImage extends StatelessWidget {
  final Post post;

  PostImage({required this.post});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      PostService.getImageUrl(post.postImage),
      width: double.infinity,
      height: 300,
      fit: BoxFit.cover,
    );
  }
}
