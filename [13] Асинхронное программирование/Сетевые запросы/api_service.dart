import 'dart:convert';
import 'dart:io';

import 'package:api_request_example/model/post.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<void> fetchPosts() async {
    final url = Uri.parse('http://localhost:3000/posts');
    try {
      final response = await http.get(url);

      if (response.statusCode != 200) {
        throw HttpException(
            'Не удалось получить посты. Код сервера: ${response.statusCode}');
      }

      final jsonString = response.body;
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final List<Post> posts =
          jsonList.map((post) => Post.fromJson(post)).toList();

      for (var post in posts) {
        print('Post ID: ${post.id}, Title: ${post.title}');
      }
    } on SocketException {
      print('Не удается получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }

  Future<void> createPost(Post newPost) async {
    final url = Uri.parse('http://localhost:3000/posts');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(newPost.toJson()),
      );

      if (response.statusCode == 201) {
        final createdPost = Post.fromJson(json.decode(response.body));
        print('Пост успешно создан: Post ID ${createdPost.id}');
      } else {
        throw HttpException(
            'Не удалось создать пост. Код сервера: ${response.statusCode}');
      }
    } on SocketException {
      print('Не удается получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }

  Future<void> updatePost(int postId, Post updatedPost) async {
    final url = Uri.parse('http://localhost:3000/posts/$postId');
    try {
      final response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(updatedPost.toJson()),
      );

      if (response.statusCode != 200) {
        throw HttpException(
            'Не удалось обновить пост. Код сервера: ${response.statusCode}');
      }

      print('Пост успешно обновлен. Post ID: $postId');
    } on SocketException {
      print('Не удается получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }

  Future<void> deletePost({required int postId}) async {
    final url = Uri.parse('http://localhost:3000/posts/$postId');
    try {
      final response = await http.delete(url);

      if (response.statusCode != 200) {
        throw HttpException(
            'Не удается удалить пост. Код сервера: ${response.statusCode}');
      }

      print('Пост успешно удален. Post ID: $postId');
    } on SocketException {
      print('Не удается получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }
}
