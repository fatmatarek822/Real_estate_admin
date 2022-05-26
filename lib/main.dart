import 'package:flutter/material.dart';
import 'package:realestate_admin/Layout/layout.dart';
import 'package:realestate_admin/modules/drawer/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            LayoutScreen(),
          ],
        ),
      ),
    );
  }
}

