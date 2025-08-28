import '../interface/post_interface_service.dart';
import '../model/post.dart';

class PostRepository {
  final PostServiceInterface _interface;
  PostRepository(this._interface);

  Future<List<Post>> fetchPosts() async{
    return await _interface.fetchPosts();
  }

  Future<List<Post>> updatePosts() async {
    return await _interface.fetchPosts();
  }
}

