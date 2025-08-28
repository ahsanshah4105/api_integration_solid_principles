import '../../../core/network/network_client.dart';
import '../repository/post_repository.dart';
import '../service/post_interface_service.dart';

class PostController {
  late final PostRepositoryInterface _repository;

  PostController({bool useNetwork = true}) {
    final httpClient = NetworkClient();
    _repository = PostRepository(httpClient);
  }

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
