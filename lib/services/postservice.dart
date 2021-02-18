import 'dart:convert';

import 'package:day1/models/post.dart';
import 'package:http/http.dart' as http;

class PostService {
  static const String url = 'https://jsonplaceholder.typicode.com/posts';
  List<PostData> list = [];

  getList() {
    return this.list;
  }

  Future getPosts() async {
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    print(data);
    for (var item in data) {
      this.list.add(PostData(
          id: item['id'].toString(),
          title: item['title'].toString(),
          body: item['body'].toString()));
    }
  }
}
