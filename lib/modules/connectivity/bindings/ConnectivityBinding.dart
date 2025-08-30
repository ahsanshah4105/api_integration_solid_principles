import 'package:api_intergration_demo/modules/connectivity/controllers/connectivity_controller.dart';
import 'package:api_intergration_demo/modules/connectivity/repository/connectivity_repository.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';

class ConnectivityBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectivityController( connectivityRepository: ConnectivityRepository()));
  }
}