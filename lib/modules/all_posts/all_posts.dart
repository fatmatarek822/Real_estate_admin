import 'package:flutter/material.dart';

class AllPosts extends StatelessWidget {
  const AllPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('NO Posts'),
        ],
      ),
    );
  }
}
