
import 'package:api_intergration_demo/modules/weather/service/weather_service.dart';

import '../../../core/network/network_client.dart';
import '../repository/weather_repository.dart';

class WeatherController{
  late final WeatherRepositoryInterface _weatherRepositoryInterface;

  WeatherController({bool useNetwrok = true}) {
    final httpClient = NetworkClient();
    _weatherRepositoryInterface = WeatherRepository(httpClient);
  }

  Future<dynamic> showWeather(double lat, double lon) async {
    final weather = await _weatherRepositoryInterface.getWeather();
    print(weather);
  }
}
