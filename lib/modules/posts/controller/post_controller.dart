import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../service/post_interface_service.dart';

class PostController extends GetxController {
  final PostRepositoryInterface repository;
  var fetchedImage = Rx<Image?>(null);
  var isLoading = false.obs;
  PostController(this.repository);


  Future<void> showPosts() async {
    final posts = await repository.fetchPosts();
    for (var post in posts) {
      print('Title: ${post.title}');
    }
  }

  Future<void> updatePost() async {
    final posts = await repository.updatePosts();
    for (var post in posts) {
      print('Updated Post Title: ${post.title}');
    }
  }

  Future<void> showImage() async {
    isLoading.value = true;
    try {
      final imageBytes = await repository.fetchImage();
      fetchedImage.value = Image.memory(imageBytes);
    } catch (e) {
      print('Error fetching image: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
