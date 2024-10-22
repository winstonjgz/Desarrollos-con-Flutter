import 'package:bootcampcf2_app/models/post.dart';
import 'package:timeago/timeago.dart';
import 'package:bootcampcf2_app/widgets/avatar.dart';
import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    super.key,
    required this.post,
    required this.onDelete,
  });
  final Post post;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Avatar(imageUrl: post.author.photoUrl, size: 40),
                const SizedBox(
                  width: 20,
                ),
                Text(post.author.name),
                const Spacer(), //Separar una palabra o campo del otro
                Text(
                  format(post.createdAt),
                ),
                IconButton(
                  onPressed: onDelete,
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              post.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(post.description),
          )
        ],
      ),
    );
  }
}
