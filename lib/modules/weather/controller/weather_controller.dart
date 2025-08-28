import '../repository/weather_repository.dart';

class WeatherController{
  final WeatherRepository _weatherRepository;
  WeatherController(this._weatherRepository);

  Future<dynamic> showWeather(double lat, double lon) async {
    final weather = await _weatherRepository.getWeather();
    print(weather);
  }

}
