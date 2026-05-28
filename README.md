# 🔌 API Integration with SOLID Principles

> A Flutter learning project demonstrating clean API integration using SOLID principles, Dio HTTP client, GetX state management, and support for REST, GraphQL, and file uploads.

![Flutter](https://img.shields.io/badge/Framework-Flutter-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Language-Dart-0175C2?logo=dart)
![GetX](https://img.shields.io/badge/State-GetX-8B5CF6)
![Dio](https://img.shields.io/badge/HTTP-Dio-orange)
![License](https://img.shields.io/badge/License-MIT-green)
![Purpose](https://img.shields.io/badge/Purpose-Learning%20%2F%20Demo-yellow)

---

## 🎯 Purpose

This project was built as a hands-on exercise to understand and apply:
- **SOLID principles** in a real Flutter codebase
- Clean separation of networking concerns using **abstract interfaces**
- Practical **Dio** usage for REST, GraphQL, image fetching, and file uploads
- **GetX** for dependency injection and state management

> ⚠️ **Note:** This is a learning/demo project. The auth token in the interceptor is a placeholder — in production, tokens should always come from secure storage or environment variables.

---

## ✨ Features

### 🏗️ SOLID in Action

| Principle | How it's applied |
|---|---|
| **S** — Single Responsibility | `NetworkClient` only handles HTTP — no business logic |
| **O** — Open/Closed | New endpoints added via new classes, not modifying `NetworkClient` |
| **L** — Liskov Substitution | Any class implementing `HttpClientInterface` can replace `NetworkClient` |
| **I** — Interface Segregation | `HttpClientInterface` exposes only what consumers need |
| **D** — Dependency Inversion | All layers depend on `HttpClientInterface` abstraction, not the concrete class |

### 🌐 API Capabilities

- **REST** — GET and PUT requests with JSON support
- **GraphQL** — POST-based query execution with variable support
- **File Upload** — Multipart form-data with optional custom fields
- **Image Fetch** — Binary response handling with `Uint8List`
- **Interceptors** — Request/response logging and dynamic header injection

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Language | Dart |
| Framework | Flutter |
| HTTP Client | Dio |
| State Management | GetX |
| Architecture | SOLID + Clean Layering |
| Error Handling | Custom `ApiException` + `ApiErrorHandler` |

---

## 📁 Project Structure

```
lib/
├── core/
│   ├── network/
│   │   ├── http_client_interface.dart   # Abstract contract (DIP)
│   │   └── network_client.dart          # Dio implementation
│   └── error/
│       └── api_exceptions.dart          # Custom exception handling
├── features/
│   └── ...                              # Feature modules using GetX
└── main.dart
```

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/ahsanshah4105/api_integration_solid_principles.git
   cd api_integration_solid_principles
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Replace the placeholder token in `network_client.dart`:
   ```dart
   // Replace this:
   options.headers['Authorization'] = 'Bearer yourAuthToken';
   // With your actual token source, e.g. from GetStorage or env
   options.headers['Authorization'] = 'Bearer ${storage.read('token')}';
   ```

4. Run the app:
   ```bash
   flutter run
   ```

---

## 📚 Key Concept Demonstrated

**Abstract Interface Pattern**
```dart
abstract class HttpClientInterface {
  Future<dynamic> get(String url);
  Future<dynamic> query({required String endpoint, required String query, ...});
  Future uploadFile(String url, File file, {Map<String, dynamic>? fields});
  // ...
}
```
This means any part of the app that needs HTTP calls depends on the interface — not on Dio directly. Swapping Dio for another client requires zero changes outside the network layer.

---

## 📞 Contact

**Ahsan Ali Shah** — Mobile Application Developer  

[![Email](https://img.shields.io/badge/Email-ahsanalishah4105@gmail.com-red?logo=gmail)

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://linkedin.com/in/ahsanalishah4105)
