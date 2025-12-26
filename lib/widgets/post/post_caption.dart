import 'package:flutter/material.dart';

class PostCaption extends StatefulWidget {
  const PostCaption({super.key});

  @override
  State<PostCaption> createState() => _PostCaptionState();
}

class _PostCaptionState extends State<PostCaption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('PostCaption is working'),
      ),
    );
  }
}
