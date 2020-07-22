import 'package:flutter/material.dart';

class CreateToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height - 80;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Mission Today"),
        backgroundColor: Colors.green[800],
      ),
      body: Container(
        color: Colors.red,
        width: _width,
        height: _height,
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: _width - 10,
              height: _height / 2 - 7.5,
              margin: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                onChanged: null,
                maxLines: 18,
                cursorColor: Colors.white,
                enableInteractiveSelection: false,
                textAlign: TextAlign.start,
                decoration:
                    InputDecoration(hintText: "Write your mission here..."),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/"),
              child: Container(
                width: _width - 10,
                height: _height / 2 - 7.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    ("SUBMIT"),
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
