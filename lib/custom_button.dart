import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  CustomOutlineButton({this.icon,this.text,this.color,this.onPressed,this.borderSide,this.shape,this.style,this.side});
  final text;
  final color;
  final onPressed;
  final borderSide;
  final shape;
  final style;
  final side;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      width: 342,
      child: OutlineButton(
        borderSide: BorderSide(color: Colors.red),
        shape: StadiumBorder(),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.fingerprint,color: Colors.red,),
            SizedBox(width: 40,),
            Text(text,style: style,),
          ],
        ),

      ),





    );
  }
}

class CustomMatButton extends StatelessWidget {
  CustomMatButton({this.text,this.color,this.onPressed,this.textColor,this.fontSize});
  final text;
  final color;
  final onPressed;
  final textColor;
  final fontSize;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),),
      height: 50,
      minWidth: 342,
      color: color,
      onPressed:onPressed,
      child: Text(text,style: TextStyle(
        color: textColor,
        fontFamily: "Poppins",
        fontSize: fontSize,
      ),),
    );

    }
}
