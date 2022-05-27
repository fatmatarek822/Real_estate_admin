import 'package:flutter/material.dart';
import 'package:realestate_admin/home.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('All Posts'),
        centerTitle: true,
        leading: DrawerWidget(),
      ),
    );
  }
}
