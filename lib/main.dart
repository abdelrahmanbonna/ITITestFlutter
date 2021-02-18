import 'package:day1/Screens/post/post.dart';
import 'package:flutter/material.dart';

import 'Screens/posts/posts.dart';
import 'Screens/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
