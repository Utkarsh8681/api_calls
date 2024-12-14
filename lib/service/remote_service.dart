// import 'dart:convert';

import 'package:api_calls/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Post>?> getposts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
