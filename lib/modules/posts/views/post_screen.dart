import 'package:api_intergration_demo/modules/posts/controller/post_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final  PostController _controller = Get.find<PostController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multipart Image Fetch")),
      body: Obx(() => Center(
        child: _controller.isLoading.value
            ? CircularProgressIndicator()
            : _controller.fetchedImage.value ?? Text("No image loaded"),
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: _controller.showImage,
        child: Icon(Icons.refresh),
      ),
    );
  }
  }

