import 'package:api_request_example/api_service.dart';
import 'package:api_request_example/model/post.dart';

void main() async {
  print('Получение постов...');
  await ApiService().fetchPosts();

  final newPost = Post(id: 4, title: 'Post 4', body: 'Body of Post 4');
  print('\nСоздание нового поста...');
  await ApiService().createPost(newPost);

  print('\nПолучение постов после создания нового поста...');
  await ApiService().fetchPosts();

  final updateId = 4;
  final updatedPost =
      Post(id: updateId, title: 'Update Post 4', body: 'Update Body 4');
  print('\nОбновление поста с ID $updateId');
  await ApiService().updatePost(updateId, updatedPost);

  print('\nПолучение постов после обновления поста...');
  await ApiService().fetchPosts();

  print('\nУдаление поста с ID 3');
  await ApiService().deletePost(postId: 3);

  print('\nПолучение постов после удаление поста...');
  await ApiService().fetchPosts();
}
