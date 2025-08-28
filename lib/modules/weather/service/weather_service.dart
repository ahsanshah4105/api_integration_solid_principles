abstract class WeatherRepositoryInterface {
  Future<dynamic> getWeather([double? lat, double? lon]);
}