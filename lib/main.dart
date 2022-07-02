import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realestate_admin/Layout/layout.dart';
import 'package:realestate_admin/home.dart';
import 'package:realestate_admin/modules/cubit/cubit.dart';
import 'package:realestate_admin/modules/cubit/states.dart';
import 'package:realestate_admin/modules/drawer/drawer.dart';

  void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider( create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state){},
        builder: (context, state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            home: Home(),
            // Scaffold(
            //   body: Stack(
            //     children: [
            //       DrawerScreen(),
            //       LayoutScreen(),
            //     ],
            //   ),
            // ),
          );
        },

    ),
    );

  }
}

