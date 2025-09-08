import 'package:api_intergration_demo/modules/countries/controller/country_controller.dart';
import 'package:api_intergration_demo/modules/countries/repository/country_repository.dart';
import 'package:get/get.dart';
import '../../../core/network/network_client.dart';

class CountryBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CountryController(service:  CountryRepository(httpClient: NetworkClient())));
  }
}