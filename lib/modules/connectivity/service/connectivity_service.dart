import '../../../core/utils/enums/connectivity.dart';

abstract class ConnectivityService {
  Stream<ConnectivityStatus> get onStatusChange;
  Future<ConnectivityStatus> getCurrentStatus();
}
