
import '../repository/post_repository.dart';

class PostController {
  final PostRepository _repository;
  PostController(this._repository);

  Future<void> showPosts() async {
    final posts = await _repository.fetchPosts();
    for (var post in posts) {
      print('Title: ${post.title}');
    }
  }

  Future<void> updatePost() async {
    final posts = await _repository.updatePosts();
    for (var post in posts) {
      print('Updated Post Title: ${post.title}');
    }
  }
}
