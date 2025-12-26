import 'package:flutter/material.dart';

class PostAction extends StatefulWidget {
  const PostAction({super.key});

  @override
  State<PostAction> createState() => _PostActionState();
}

class _PostActionState extends State<PostAction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('PostAction is working'),
      ),
    );
  }
}
