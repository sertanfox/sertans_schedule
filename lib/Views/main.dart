import 'package:first_flutter_app/Views/mainpage/VcreateDeadline.dart';
import 'mainpage/VcreateToday.dart';
import 'package:flutter/material.dart';
import 'mainpage/Vmainpage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => MainPage(),
      "/createdeadline": (context) => CreateDeadline(),
      "/imageviews": (context) => ImageViews(),
    },
  ));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: AnaSayfa2(),
//     );
//   }
