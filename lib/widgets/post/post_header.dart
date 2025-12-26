import 'package:flutter/material.dart';

class PostHeader extends StatefulWidget {
  const PostHeader({super.key});

  @override
  State<PostHeader> createState() => _PostHeaderState();
}

class _PostHeaderState extends State<PostHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('PostHeader is working'),
      ),
    );
  }
}
