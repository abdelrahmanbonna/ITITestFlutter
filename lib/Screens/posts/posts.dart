import 'package:day1/Screens/posts/widgets/post.dart';
import 'package:day1/services/postservice.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  List posts = [];

  fetchposts() async {
    var service = PostService();
    await service.getPosts();
    this.posts = service.getList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchposts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POSTS'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostCard(
            post: posts[index],
          );
        },
      ),
    );
  }
}
