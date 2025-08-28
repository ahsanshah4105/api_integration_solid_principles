import 'package:api_intergration_demo/core/utils/api_url.dart';
import '../../../core/network/api_service.dart';
import '../interface/post_interface_service.dart';
import '../model/post.dart';


class PostService implements PostServiceInterface{
  final ApiService _apiService = ApiService();

  @override
  Future<List<Post>> fetchPosts() async {
    final response = await _apiService.client.get(ApiUrl.posts);
    return (response as List)
        .map((json) => Post.fromJson(json))
        .toList();
  }

  @override
  Future<List<Post>> updatePosts() async {
    String updateTitle = "Ahsan ali shah";
    final response = await _apiService.client.put(
        ApiUrl.updatePosts,
        body: {
          "id": 1,
          "title": "$updateTitle",
          "body": "Updated Body",
          "userId": 1
        }
    );

    return [Post.fromJson(response)];
  }
}

