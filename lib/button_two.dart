import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ButtonTwo extends StatelessWidget {
  ButtonTwo({this.onPressed,this.text,this.style,this.color,this.BorderSide_color,this.icon});
  final onPressed;
  final text;
  final style;
  final color;
  final BorderSide_color;
  final icon;

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
        child: Row(
          children: [
            SizedBox(width: 90,),

            Text(text,style: style,),
            SizedBox(width: 30,),
            Icon(icon,color: HexColor("#1FE000")),
          ],
        ),
      ),


    );
  }
}
