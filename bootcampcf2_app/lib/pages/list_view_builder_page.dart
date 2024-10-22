import 'package:bootcampcf2_app/models/post.dart';
import 'package:bootcampcf2_app/widgets/post_tile.dart';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  late List<Post> _post;

  @override
  void initState() {
    super.initState();

    _post = List.generate(
        1,
        // ignore: deprecated_member_use
        (index) => _getPost());
  }

  Post _getPost() {
    final faker = Faker();
    return Post(
      id: faker.guid.guid(),
      author: User(
        id: faker.guid.guid(),
        name: faker.person.name(),
        // ignore: deprecated_member_use
        photoUrl: faker.image.image(
          keywords: ['person'],
          random: true,
        ),
      ),
      description: faker.lorem.sentence(),
      // ignore: deprecated_member_use
      image: faker.image.image(
        random: true,
      ),

      likes: faker.randomGenerator.integer(1000),
      comments: faker.randomGenerator.integer(1000),
      shared: faker.randomGenerator.integer(1000),
      createdAt: faker.date.dateTime(minYear: 2021, maxYear: 2024),
    );
  }

  void _onDelete(int index) {
    setState(() {
      _post.removeAt(index);
    });
    _post.removeAt(index);
  }

  void _add() {
    setState(() {});
    _post.add(_getPost());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(
          height: 10,
        ),
        //itemBuilder: (_, index) => flutter.Image.network(_post[index]),
        itemBuilder: (_, index) {
          return PostTile(
            post: _post[index],
            onDelete: () => _onDelete(index),
          );
        },
        itemCount: _post.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _add();
        },
        child: IconButton(
          onPressed: _add,
          icon: const Icon(Icons.add_a_photo_sharp),
        ),
      ),
    );
  }
}
