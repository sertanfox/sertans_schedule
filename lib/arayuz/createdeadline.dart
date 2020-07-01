import 'package:flutter/material.dart';

class CreateDeadline extends StatefulWidget {
  @override
  _CreateDeadlineState createState() => _CreateDeadlineState();
}

class _CreateDeadlineState extends State<CreateDeadline> {
  @override
  Color colored = Colors.green[100];
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/"),
      onDoubleTap: () => colored = Colors.redAccent,
      child: Container(width: 200, height: 200, color: colored),
    );
  }
}
