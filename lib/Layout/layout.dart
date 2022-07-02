/*
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {

  double xOffset =0;
  double yOffset =0;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AnimatedContainer(

        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(isDrawerOpen ? 0.85 : 1.00)
          ..rotateZ(isDrawerOpen ? -50 : 0),

        duration: Duration(milliseconds: 200),
       // color: Colors.brown,
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.circular(40),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    isDrawerOpen ? GestureDetector(
                      child: Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),
                      onTap: ()
                      {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          isDrawerOpen = false;
                        });
                      },
                    ):
                    GestureDetector(
                      child: Icon(Icons.menu, color: Colors.white,),
                      onTap: ()
                      {
                        setState(() {
                          xOffset = 290;
                          yOffset = 80;
                          isDrawerOpen = true;
                        });
                      },
                    ),
                    Text(
                      'Drawer',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0,0),
                              ),
                            ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                    height: 100,
                                    width: 100,
                                    image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0,0),
                                ),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.symmetric(vertical: 8),
                                child: Image(
                                  height: 100,
                                  width: 100,
                                  image: NetworkImage('https://img.freepik.com/free-vector/business-man-call-center-customer-service-character_40876-89.jpg?w=740'),
                                ),
                              ),
                              Text(
                                'Laptop',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );

  }
}


 */