import 'package:api_intergration_demo/modules/posts/binding/post_binding.dart';
import 'package:api_intergration_demo/modules/posts/views/post_screen.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
  GetPage(
  name: AppRoutes.postScreen,
  page: () => const PostScreen(),
  binding: PostBinding(),
  )
  ];
}