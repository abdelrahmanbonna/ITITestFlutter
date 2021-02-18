import 'package:day1/models/post.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  final PostData post;
  PostScreen({this.post});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        width: media.size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text(this.post.title),
                Text(this.post.body),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
