import '../../../core/network/network_client.dart';
import '../../../core/utils/api_url.dart';
import '../service/weather_service.dart';

class WeatherRepository implements WeatherRepositoryInterface{
  final HttpClientInterface _client;

  WeatherRepository(this._client);
  @override
  Future getWeather([double? lat, double? lon]) async {
    final response = await _client.get(ApiUrl.urlWeather);
    return response;
  }
}

