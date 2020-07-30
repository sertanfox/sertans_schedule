import "package:flutter/material.dart";

class VshowDeadline extends StatefulWidget {
  @override
  _VshowDeadlineState createState() => _VshowDeadlineState();
}

class _VshowDeadlineState extends State<VshowDeadline> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height - 80;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      child: Text("vShowDeadline"),
    );
  }
}
