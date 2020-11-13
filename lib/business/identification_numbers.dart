import 'package:fintech/business_pattern_view.dart';
import 'package:flutter/material.dart';

class IdentificationNumbers extends StatefulWidget {
  @override
  _IdentificationNumbersState createState() => _IdentificationNumbersState();
}

class _IdentificationNumbersState extends State<IdentificationNumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BusinessPatternView(
            color: Colors.white,
            color1: Colors.white,
            color2: Colors.black,
            color3: Colors.black,
            color4: Colors.black,
            color5: Colors.black,
            color6: Colors.black,
            color7: Colors.black,
            color8: Colors.black,
          ),
          Text("Identification Numbers"),
          Text("1 of 2",style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Colors.red,
          ),),
          Text("What is your Business Registration Number"),
          Text("2 of 2",style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Colors.red,
          ),),
          Text("What is your Tax Identification Number"),

        ],
      ),
    );
  }
}
