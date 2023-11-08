import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Models/photoModel.dart';
import '../Models/postModel.dart';


class DataService {
  final _baseUrl = 'jsonplaceholder.typicode.com';

  Future<List<Post>> getPosts() async {
    try {
      final uri = Uri.https(_baseUrl, '/posts');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      final posts = json.map((postJson) => Post.fromJson(postJson)).toList();
      return posts;
    } catch (e) {
      throw e;
    }
  }
  Future<List<Photo>> getPhotos() async {
    try {
      final uri = Uri.https(_baseUrl, '/photos');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      final photos = json.map((postJson) => Photo.fromJson(postJson)).toList();
      return photos;
    } catch (e) {
      throw e;
    }
  }
}