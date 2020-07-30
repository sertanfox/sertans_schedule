import 'package:first_flutter_app/Models/myWidgets.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Starter createState() => Starter();
}

class Starter extends State<MainPage> with SingleTickerProviderStateMixin {
  Color todayColor = Colors.grey[850];
  Color deadlineColor = Colors.grey[850];
  Color dateColor = Colors.grey[850];
  bool todayCurrentColor = true;
  bool deadlineCurrentColor = true;
  bool dateCurrentColor = true;
  @override
  // TODO: implement context

  void _animateContainer() {
    setState(() {
      dateColor = Colors.greenAccent;
    });
  }

  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, // the SingleTickerProviderStateMixin
        duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("SERTAN'S SCHEDULE"),
        backgroundColor: Colors.green[800],
        centerTitle: true,
        leading: new Container(),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width, //MAX 318
          height: MediaQuery.of(context).size.height, //MAX 487
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 4 / 7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 1,
                      child: RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, "/Vcreatetoday"),
                        color: todayColor,
                        child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.skewY(0.0)..rotateZ(0),
                            child: CreateVerticalTexts(
                                "TODAY", Colors.grey[400], 18)),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 1,
                      child: RaisedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, "/Vcreatedeadline"),
                          color: deadlineColor,
                          child: CreateVerticalTexts(
                              "DEADLINE", Colors.grey[400], 18)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 1,
                      child: RaisedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, "/Vcreatedate"),
                          color: dateColor,
                          child: CreateVerticalTexts(
                              "DATE", Colors.grey[400], 18)),
                    ),
                  ],
                ),
              ),

              MissionsContainer() //Missions alanının Container'ı ve içinde MissionsButton'lar ile birlikte.
            ],
          ),
        ),
      ),
    );
  }
}

class MissionsButton extends StatelessWidget {
  String path;

  MissionsButton(this.path);
  @override
  Widget build(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width / 3 - 1,
        child: RaisedButton(
          onPressed: () => Navigator.pushNamed(context, path),
          color: Colors.grey[500],
          child: Text("MISSIONS",
              textAlign: TextAlign.center, style: TextStyle(fontSize: 17)),
        ),
      );
}

class MissionsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 2 / 7 - 1,
        margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MissionsButton("/VshowToday"),
            MissionsButton("/VshowDeadline"),
            MissionsButton("/VshowDate")
          ],
        ),
      );
}
