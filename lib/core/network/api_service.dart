
import 'network_client.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;
  ApiService._internal();

  final NetworkClient _networkClient = NetworkClient();

  HttpClientInterface get client => _networkClient;
}
