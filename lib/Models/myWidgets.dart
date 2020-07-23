import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class ButtonText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontsize;

  ButtonText(this.text, this.color, this.fontsize);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: this.fontsize,
            color: this.color,
            fontWeight: FontWeight.bold));
  }
}

class CreateVerticalTexts extends StatelessWidget {
  final String str;
  final double fontsize;
  final Color color;

  CreateVerticalTexts(this.str, this.color, this.fontsize);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        for (var i = 0; i < str.length; i++)
          ButtonText(str[i], color, fontsize),
      ],
    );
  }
}

class CreateDateTimePicker extends StatelessWidget {
  final Color _textColor;
  final String _text;
  final double fontsize;
  CreateDateTimePicker(this._text, this._textColor, this.fontsize);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Colors.white)),
        onPressed: () {
          DatePicker.showDatePicker(context,
              showTitleActions: true,
              minTime: DateTime.now(),
              maxTime: DateTime(2030, 12, 31), onChanged: (date) {
            print('change $date');
          }, onConfirm: (date) {
            print('confirm $date');
          }, currentTime: DateTime.now(), locale: LocaleType.tr);
        },
        child: Text(_text,
            style: TextStyle(color: _textColor, fontSize: this.fontsize)));
  }
}

class CreateContainer extends StatelessWidget {
  final double genislik;
  final double yukseklik;
  final Color color;
  final StatelessWidget myWidget;
  CreateContainer(this.genislik, this.yukseklik, this.color, this.myWidget);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: genislik,
      height: yukseklik,
      color: color,
      child: myWidget,
    );
  }
}
