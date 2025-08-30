import 'package:api_intergration_demo/modules/connectivity/bindings/ConnectivityBinding.dart';
import 'package:get/get.dart';
import '../../modules/connectivity/views/ConnectivityScreen.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
  GetPage(
  name: AppRoutes.postScreen,
  page: () => const ConnectivityScreen(),
  binding: ConnectivityBinding(),
  )
  ];
}