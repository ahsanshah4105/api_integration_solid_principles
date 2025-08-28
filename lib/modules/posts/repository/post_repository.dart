// post_repository.dart
import 'package:api_intergration_demo/core/utils/api_url.dart';
import '../../../core/network/network_client.dart';
import '../model/post.dart';
import '../service/post_interface_service.dart';

class PostRepository implements PostRepositoryInterface {
  final HttpClientInterface _httpClientInterface;

  PostRepository(this._httpClientInterface);

  @override
  Future<List<Post>> fetchPosts() async {
    final response = await _httpClientInterface.get(ApiUrl.posts);
    return (response as List)
        .map((json) => Post.fromJson(json))
        .toList();
  }

  @override
  Future<List<Post>> updatePosts() async {
    const updateTitle = "Ahsan ali shah";
    final response = await _httpClientInterface.put(
      ApiUrl.updatePosts,
      body: {
        "id": 1,
        "title": updateTitle,
        "body": "Updated Body",
        "userId": 1
      },
    );

    return [Post.fromJson(response)];
  }
}
