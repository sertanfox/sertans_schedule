import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class CreateDeadline extends StatefulWidget {
  @override
  _CreateDeadlineState createState() => _CreateDeadlineState();
}

class _CreateDeadlineState extends State<CreateDeadline> {
  final formKey = GlobalKey<FormState>();
  String _mission;
  Color _missiontype = Colors.green;
  Color _submit = Colors.yellow;
  Color _raisedbutton = Colors.grey[850];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 1),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 3 / 5 - 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width * 3 / 5 - 1,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(color: Colors.amber, width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextField(
                          maxLines: 18,
                          cursorColor: Colors.white,
                          enableInteractiveSelection: false,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              hintText: "Write your mission here..."),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * 2 / 5 - 2,
                        color: _raisedbutton,
                        child: RaisedButton(
                          onPressed: null,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonText("M", Colors.green, 18),
                              ButtonText("I", Colors.green, 18),
                              ButtonText("S", Colors.green, 18),
                              ButtonText("S", Colors.green, 18),
                              ButtonText("I", Colors.green, 18),
                              ButtonText("O", Colors.green, 18),
                              ButtonText("N", Colors.green, 18),
                              ButtonText("", Colors.green, 18),
                              ButtonText("T", Colors.green, 18),
                              ButtonText("Y", Colors.green, 18),
                              ButtonText("P", Colors.green, 18),
                              ButtonText("E", Colors.green, 18),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 2 / 5 - 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        color: Colors.amber,
                        width: MediaQuery.of(context).size.width * 3 / 5 - 2,
                        height: MediaQuery.of(context).size.height,
                        child: FlatButton(
                          onPressed: () {
                            DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                minTime: DateTime.now(),
                                maxTime: DateTime(2030, 12, 31),
                                onChanged: (date) {
                              print('change $date');
                            }, onConfirm: (date) {
                              print('confirm $date');
                            },
                                currentTime: DateTime.now(),
                                locale: LocaleType.tr);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonText("D", _raisedbutton, 20),
                              ButtonText("A", _raisedbutton, 20),
                              ButtonText("T", _raisedbutton, 20),
                              ButtonText("E", _raisedbutton, 20),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: _raisedbutton,
                        width: MediaQuery.of(context).size.width * 2 / 5 - 1,
                        height: MediaQuery.of(context).size.height,
                        child: RaisedButton(
                            onPressed: null,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ButtonText("S", Colors.yellow, 18),
                                ButtonText("U", Colors.yellow, 18),
                                ButtonText("B", Colors.yellow, 18),
                                ButtonText("M", Colors.yellow, 18),
                                ButtonText("I", Colors.yellow, 18),
                                ButtonText("T", Colors.yellow, 18),
                              ],
                            )),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}

class ButtonText extends StatelessWidget {
  @override
  String text;
  Color color;
  double fontsize;

  ButtonText(this.text, this.color, this.fontsize);

  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: this.fontsize,
            color: this.color,
            fontWeight: FontWeight.bold));
  }
}
