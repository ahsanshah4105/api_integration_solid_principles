import 'package:api_intergration_demo/modules/weather/interface/weather_interface.dart';

import '../../../core/network/api_service.dart';
import '../../../core/utils/api_url.dart';

class WeatherService implements WeatherServiceInterface{
  final ApiService _apiService = ApiService();

  @override
  Future getWeather([double? lat, double? lon]) async {
    final response = await _apiService.client.get(ApiUrl.urlWeather);
    return response;
  }
}