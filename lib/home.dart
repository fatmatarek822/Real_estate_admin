import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:realestate_admin/posts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        menuScreen: DrawerScreen(setIndex: (index){setState(() {
          currentIndex = index;
        });},),
        mainScreen: CurrentScreen(),
      borderRadius: 30,
      showShadow: true,
      angle: -2.0,
      slideWidth: 200,
      menuBackgroundColor: Colors.brown,
    );
  }

  Widget CurrentScreen()
  {
    switch(currentIndex)
    {
      case 0:
        return HomeScreen(tittle: "Home",);

      case 1:
        return Posts();

      default:
       return HomeScreen(tittle: "others",);
    }
  }
}

class HomeScreen extends StatefulWidget {
  final String tittle;
 const HomeScreen({Key? key, required this.tittle }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Home'),
        centerTitle: true,
        leading: DrawerWidget(),

      ),
    );
  }
}

class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerList(Icons.home, 'Home', 0),
          drawerList(Icons.description, 'All Posts', 1),
        ],
      ),
    );
  }


  Widget drawerList(IconData icon, String text, int index)
  {
    return GestureDetector(
      onTap: ()
      {
        widget.setIndex(index);
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, bottom: 12,),
        child: Row(
          children: [
            Icon(icon, color: Colors.white,),
            SizedBox(width: 12,),
            Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: ()
        {
          ZoomDrawer.of(context)!.toggle();
        },
        icon: Icon(Icons.menu),
    );
  }
}



