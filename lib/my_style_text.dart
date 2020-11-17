import 'package:flutter/cupertino.dart';

class MyStyleText extends StatelessWidget {
  MyStyleText({this.text,this.height,this.width,this.color,this.fontSize});
  final text;
  final width;
  final height;
  final color;
  final fontSize;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Text(text,style: TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontFamily: "Poppins",
          fontSize:fontSize,
          color: color),
      ),
    );
  }
}