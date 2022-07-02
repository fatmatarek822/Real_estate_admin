/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate_admin/modules/all_posts/all_posts.dart';
import 'package:realestate_admin/shared/components/components.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.only(top: 50,left: 40,bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                    image: NetworkImage('https://thumbs.dreamstime.com/b/admin-sign-laptop-icon-stock-vector-166205404.jpg',),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Admin',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               Row(
                 children: [
                   IconButton(onPressed: (){navigateTo(context, AllPosts());}, icon: Icon(Icons.description)),
                   SizedBox(
                     width: 8,
                   ),
                   TextButton(onPressed: (){navigateTo(context, AllPosts());}, child: Text('All Posts'),),
                 ],
               ),
                BuildDrawer(
                  icon: Icons.error_outline,
                  text: 'Settings',
                ),
                SizedBox(
                  height: 20,
                ),
                BuildDrawer(
                  icon: Icons.error_outline,
                  text: 'Settings',
                ),
                SizedBox(
                  height: 20,
                ),
                BuildDrawer(
                  icon: Icons.error_outline,
                  text: 'Settings',
                ),
                SizedBox(
                  height: 20,
                ),
                BuildDrawer(
                  icon: Icons.error_outline,
                  text: 'Settings',
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

}

class BuildDrawer extends StatelessWidget {
  final IconData icon;
  final String text;

  const BuildDrawer({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),

      ],
    );
  }

  Widget menuItem()
  {
    return Material(
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.ac_unit, size: 20, color: Colors.white,),
              ),
              Expanded(
                flex: 1,
                child: Text('gfddd'),)
            ],
          ),
        ),
      ),
    );
  }

}

 */
