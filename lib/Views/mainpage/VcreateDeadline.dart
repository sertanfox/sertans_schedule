import 'package:flutter/material.dart';
import '../../Models/myWidgets.dart';

class CreateDeadline extends StatefulWidget {
  @override
  _CreateDeadlineState createState() => _CreateDeadlineState();
}

class _CreateDeadlineState extends State<CreateDeadline> {
  String _mission;
  Color _missiontype = Colors.green;
  Color _submit = Colors.yellow;
  Color _raisedbutton = Colors.grey[850];

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height - 80;
    double _width = MediaQuery.of(context).size.width;
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Add Mission Deadline Dude"),
          backgroundColor: Colors.green,
        ),
        body: Container(
            color: Colors.red,
            height: _height,
            width: _width,
            padding: EdgeInsets.all(5),
            child: Container(
              width: _width,
              height: _height / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: _height / 2 - 10,
                        width: _width / 2 - 8,
                        padding: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          onChanged: (String str) => _mission = str,
                          maxLines: 18,
                          cursorColor: Colors.white,
                          enableInteractiveSelection: false,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              hintText: "Write your mission here..."),
                        ),
                      ),
                      Container(
                        height: _height / 2 - 10,
                        width: _width / 2 - 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: GestureDetector(
                          onTap: null,
                          child: Center(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                ("REMIND"),
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                ("SETTINGS"),
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          )),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, "/"),
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          height: _height / 2 - 5,
                          width: _width / 2 - 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                ("CREATE"),
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                ("THE"),
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                ("MISSION"),
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: null,
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          height: _height / 2 - 5,
                          width: _width / 2 - 8,
                          child: CreateDateTimePicker("DATE", Colors.black, 18),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}
