import 'package:day1/Screens/post/post.dart';
import 'package:day1/models/post.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final PostData post;

  PostCard({this.post});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostScreen(post: this.post),
          ),
        );
      },
      child: Container(
        width: media.size.width * 0.9,
        height: media.size.height * 0.4,
        margin: EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(spreadRadius: 1, blurRadius: 3, color: Colors.grey),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: media.size.width * 0.9,
              height: media.size.height * 0.35,
              child: Center(child: Text(this.post.title)),
            ),
            Container(
              padding: EdgeInsets.only(left: media.size.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.thumb_up,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: media.size.width * 0.03,
                  ),
                  Text(
                    'Like',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: media.size.width * 0.03,
                  ),
                  Icon(
                    Icons.comment,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: media.size.width * 0.03,
                  ),
                  Text(
                    'Comment',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
