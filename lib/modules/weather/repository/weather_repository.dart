import 'package:api_intergration_demo/modules/weather/interface/weather_interface.dart';
import '../service/weather_service.dart';

class WeatherRepository{
  final WeatherServiceInterface _interface;
  WeatherRepository(this._interface);

  @override
  Future getWeather([double? lat, double? lon]) async {
   return await _interface.getWeather(23, 23) ;
  }
}