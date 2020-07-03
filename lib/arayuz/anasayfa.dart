import 'package:flutter/material.dart';

class AnaSayfa2 extends StatefulWidget {
  @override
  AnaSayfa createState() => AnaSayfa();
}

class AnaSayfa extends State<AnaSayfa2> with SingleTickerProviderStateMixin {
  Color todayColor = Colors.grey[850];
  Color deadlineColor = Colors.grey[850];
  Color dateColor = Colors.grey[850];

  bool todayCurrentColor = true;
  bool deadlineCurrentColor = true;
  bool dateCurrentColor = true;

  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, // the SingleTickerProviderStateMixin
        duration: Duration(milliseconds: 1000));
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
                            Navigator.pushNamed(context, "/imageviews"),
                        // setState(() {
                        //   if (todayCurrentColor == true) {
                        //     todayCurrentColor = false;
                        //     todayColor = Colors.green[800];
                        //   } else {
                        //     todayCurrentColor = true;
                        //     todayColor = Colors.grey[850];
                        //   }
                        // });
                        // },
                        color: todayColor,
                        child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.skewY(0.0)..rotateZ(0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('T',
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 18)),
                                Text('O',
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 18)),
                                Text('D',
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 18)),
                                Text('A',
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 18)),
                                Text('Y',
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 18)),
                              ],
                            )),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 1,
                      child: RaisedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, "/createdeadline"),
                          // setState(() {
                          //   if (deadlineCurrentColor == true) {
                          //     deadlineCurrentColor = false;
                          //     deadlineColor = Colors.green[800];
                          //   } else {
                          //     deadlineCurrentColor = true;
                          //     deadlineColor = Colors.grey[850];
                          //   }
                          // });

                          color: deadlineColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('D',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('E',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('A',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('D',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('L',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('I',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('N',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('E',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                            ],
                          )),
                    ),
                    AnimatedContainer(
                      width: MediaQuery.of(context).size.width / 3 - 1,
                      duration: Duration(milliseconds: 1000),
                      child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              if (dateCurrentColor == true) {
                                dateCurrentColor = false;
                                dateColor = Colors.green[800];
                              } else {
                                dateCurrentColor = true;
                                dateColor = Colors.grey[850];
                              }
                            });
                          },
                          color: dateColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('D',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('A',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('T',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                              Text('E',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 18)),
                            ],
                          )),
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
  @override
  Widget build(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width / 3 - 1,
        child: RaisedButton(
          onPressed: () {},
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
            MissionsButton(),
            MissionsButton(),
            MissionsButton()
          ],
        ),
      );
}
