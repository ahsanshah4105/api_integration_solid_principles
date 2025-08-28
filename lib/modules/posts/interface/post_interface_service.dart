import '../model/post.dart';

abstract class PostServiceInterface {
  Future<List<Post>> fetchPosts();
  Future<List<Post>> updatePosts();
}
