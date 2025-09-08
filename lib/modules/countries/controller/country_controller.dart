import 'package:api_intergration_demo/modules/countries/service/country_service.dart';
import 'package:get/get.dart';
class CountryController extends GetxController {
  final CountryService service;
  CountryController({required this.service});

  var countries = <dynamic>[].obs;


  Future<void> fetchCountries() async {
    final result = await service.fetchCountries();
    countries.value = result; // this triggers UI update
  }
}