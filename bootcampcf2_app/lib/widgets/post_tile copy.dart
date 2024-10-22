import 'package:bootcampcf2_app/models/post.dart';
import 'package:timeago/timeago.dart';
import 'package:bootcampcf2_app/widgets/avatar.dart';
import 'package:flutter/material.dart';

class PostTile extends StatefulWidget {
  const PostTile({super.key, required this.post});
  final Post post;

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  @override
  void dispose() {
    super.dispose();
  }

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
                Avatar(imageUrl: widget.post.author.photoUrl, size: 40),
                const SizedBox(
                  width: 20,
                ),
                Text(widget.post.author.name),
                const Spacer(), //Separar una palabra o campo del otro
                Text(
                  format(widget.post.createdAt),
                ),
              ],
            ),
          ),
          Image.network(widget.post.image),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(widget.post.description),
          )
        ],
      ),
    );
  }
}
