abstract class WeatherServiceInterface {
  Future<dynamic> getWeather([double? lat, double? lon]);
}