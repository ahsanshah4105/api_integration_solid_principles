import 'dart:io';

import 'package:api_intergration_demo/core/error/api_exceptions.dart';
import 'package:api_intergration_demo/core/utils/api_url.dart';
import '../../../core/network/network_client.dart';
import '../model/post.dart';
import '../service/post_interface_service.dart';

class PostRepository implements PostRepositoryInterface {
  final HttpClientInterface httpClient;
  PostRepository({required this.httpClient});

  @override
  Future<List<Post>> fetchPosts() async {
    try {
      final response = await httpClient.get(
          ApiUrl.posts,
          );
      return (response as List).map((json) => Post.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to fetch posts: $e');
    }
  }

  @override
  Future<List<Post>> updatePosts() async {
    const updateTitle = "Ehsan ali shah";
    try {
      final response = await httpClient.put(
        ApiUrl.updatePosts,

        body: {
          "id": 1,
          "title": updateTitle,
          "body": "Updated Body",
          "userId": 1,
        },
      );

      return [Post.fromJson(response)];
    } catch (e) {
      throw Exception('Failed to update Posts');
    }
  }
  @override
  Future<dynamic> fetchImage() async {
    try{
      final response = await httpClient.get(ApiUrl.fetchImage);
      return response;
    } catch (error) {
      throw ApiException('Failed to fetch posts ${error.toString()}');
    }
  }

}
