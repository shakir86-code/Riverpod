import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_assignment_1/Model/models.dart';

class Apiservice {

  Future<List<Comment>> fatchComment() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/comments'),
  );
  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    return data.map((item) => Comment.fromMap(item)).toList();
  }
  return throw Exception('Failed api');
}
}

