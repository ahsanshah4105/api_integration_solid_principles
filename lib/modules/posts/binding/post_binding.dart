import 'package:api_intergration_demo/core/network/network_client.dart';
import 'package:api_intergration_demo/modules/posts/controller/post_controller.dart';
import 'package:api_intergration_demo/modules/posts/repository/post_repository.dart';
import 'package:get/get.dart';

class PostBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PostController(PostRepository(NetworkClient())));
  }
}