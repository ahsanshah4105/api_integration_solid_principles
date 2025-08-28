import 'package:api_intergration_demo/modules/posts/controller/post_controller.dart';
import 'package:api_intergration_demo/modules/weather/controller/weather_controller.dart';
import 'package:api_intergration_demo/modules/weather/repository/weather_repository.dart';
import 'package:api_intergration_demo/modules/weather/service/weather_service.dart';
import 'modules/posts/repository/post_repository.dart';
import 'modules/posts/service/post_service.dart';

void main() async {
  final postController = PostController(PostRepository(PostService()));
  await postController.showPosts();

  final weatherController = WeatherController(WeatherRepository(WeatherService()));
  await weatherController.showWeather(23, 343);
  //await postController.updatePost();

}

