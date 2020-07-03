import 'package:first_flutter_app/arayuz/createdeadline.dart';
import 'arayuz/imageviews.dart';
import 'package:flutter/material.dart';
import 'arayuz/anasayfa.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => AnaSayfa2(),
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
