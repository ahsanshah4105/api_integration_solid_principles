import 'package:api_intergration_demo/modules/weather/controller/weather_controller.dart';

import 'modules/posts/controller/post_controller.dart';

void main() async {
  final controller = PostController();
  await controller.showPosts();
  await controller.updatePost();

  final weatherController = WeatherController();
  await weatherController.showWeather(43, 34);
}
