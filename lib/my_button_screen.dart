import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({this.onPressed,this.text,this.style,this.color,this.BorderSide_color});
  final onPressed;
  final text;
  final style;
  final color;
  final BorderSide_color;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 267,
        height: 50,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: BorderSide_color,width: 0.3),

          ),
          child: Text(text,style: style,),
        ),


    );
  }
}
