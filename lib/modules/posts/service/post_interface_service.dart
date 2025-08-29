// post_repository_interface.dart
import '../model/post.dart';

abstract class PostRepositoryInterface {
  Future<List<Post>> fetchPosts();
  Future<List<Post>> updatePosts();
  Future<dynamic> fetchImage();
}
