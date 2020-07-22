import 'dart:async';

import 'package:first_flutter_app/Views/mainpage/VcreateDeadline.dart';
import 'mainpage/VcreateToday.dart';
import 'package:flutter/material.dart';
import 'mainpage/Vmainpage.dart';
import 'mainpage/VcreateDate.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => MainPage(),
      "/Vcreatedeadline": (context) => CreateDeadline(),
      "/Vcreatetoday": (context) => CreateToday(),
      "/Vcreatedate": (context) => VcreateDate(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () => print("sa"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: Icon(
                          Icons.calendar_today,
                          color: Colors.greenAccent,
                          size: 60,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        "Sertan's Schedule",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      "Manage your time\nlike Elon Musk",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
