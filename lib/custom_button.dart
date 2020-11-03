import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.text,this.color,this.onPressed,this.borderSide,this.shape,this.style,this.side});
  final text;
  final color;
  final onPressed;
  final borderSide;
  final shape;
  final style;
  final side;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      width: 342,
      child: OutlineButton(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          //side: BorderSide(color: color),
        ),
        onPressed: onPressed,

        child: Text(text,style: style,),

      ),





    );
  }
}