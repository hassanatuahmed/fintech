import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Pattern {
  static const String Account = 'asset/images/account.png';
  static const String Personal = 'asset/images/personal.png';
}


class PatternView extends StatelessWidget {
  PatternView({this.image,
    this.gradient,
    this.pattern=Pattern.Account,
    this.text,
    this.backgroundColor=Colors.red});

  final image;
  final String pattern;
  final text;
  final MaterialColor backgroundColor;
  final  gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
     // height:MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Image.asset(image,height: 180,width: 130,),
          Text(text,style: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontFamily: "poly",
            color: HexColor("#FFFFFF"),
          ),
            textAlign: TextAlign.center,),
          Image.asset(pattern,height: 100,fit: BoxFit.fill,
            width: double.infinity,
            alignment: Alignment.center,
          ),



        ],
      ),
    );
  }
}
