import 'package:bootcampcf2_app/models/user.dart';

class Post {
  Post({
    required this.id,
    required this.author,
    required this.description,
    required this.image,
    required this.likes,
    required this.comments,
    required this.shared,
  });

  final String id;
  final User author;
  final String description;
  final String image;
  final int likes;
  final int comments;
  final int shared;
}
