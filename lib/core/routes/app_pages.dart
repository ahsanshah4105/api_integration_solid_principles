import 'package:api_intergration_demo/modules/connectivity/bindings/ConnectivityBinding.dart';
import 'package:api_intergration_demo/modules/countries/binding/countryBinding.dart';
import 'package:api_intergration_demo/modules/countries/views/country_screen.dart';
import 'package:get/get.dart';
import '../../modules/connectivity/views/ConnectivityScreen.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
  GetPage(
  name: AppRoutes.postScreen,
  page: () => const ConnectivityScreen(),
  binding: ConnectivityBinding(),
  ),
    GetPage(
      name: AppRoutes.countryScreen,
      page: () => const CountryScreen(),
      binding: CountryBinding(),
    )
  ];
}