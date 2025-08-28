// modules/posts/model/post.dart
import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({required this.userId, required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );
}
