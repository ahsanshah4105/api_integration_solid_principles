import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService({String baseUrl = 'https://jsonplaceholder.typicode.com'})
      : _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer YOUR_TOKEN_HERE', // optional
    },
  ));

  // GET Request
  Future<dynamic> getRequest(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response.data;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // POST Request
  Future<dynamic> postRequest(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response.data;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Error Handler
  String _handleError(DioException e) {
    if (e.response != null) {
      return 'Error: ${e.response?.statusCode} - ${e.response?.data}';
    } else {
      return 'Connection Error: ${e.message}';
    }
  }
}
final api = ApiService();

void fetchPosts() async {
  try {
    final posts = await api.getRequest('/posts');
    print(posts);
  } catch (e) {
    print('GET Error: $e');
  }
}

void createPost() async {
  try {
    final newPost = await api.postRequest('/posts', {
      'title': 'New Post',
      'body': 'This is a test post.',
      'userId': 1,
    });
    print(newPost);
  } catch (e) {
    print('POST Error: $e');
  }
}

void main() async {
  final api = ApiService();

  // Example: Call GET request
  try {
    final posts = await api.getRequest('/posts');
    print('GET Response: $posts');
  } catch (e) {
    print('GET Error: $e');
  }

  // Example: Call POST request
  try {
    final newPost = await api.postRequest('/posts', {
      'title': 'Hello Flutter',
      'body': 'Learning API integration!',
      'userId': 1,
    });
    print('POST Response: $newPost');
  } catch (e) {
    print('POST Error: $e');
  }

}