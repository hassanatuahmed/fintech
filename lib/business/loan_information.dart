import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/create_account_screens/full_name.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/second_pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'name.dart';
class LoanInformation extends StatefulWidget {
  @override
  _LoanInformationState createState() => _LoanInformationState();
}

class _LoanInformationState extends State<LoanInformation> {
  get selected => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BusinessPatternView(
            color: Colors.white,
            color1: Colors.white,
            color2: Colors.white,
            color3: Colors.white,
            color4: Colors.white,
            color5: Colors.white,
            color6: Colors.white,
            color7: Colors.white,
            color8: Colors.white,
          ),
          Container(
            height: 51,
            width: 356,
            child: Text("Loan Information",style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontFamily: "Poppins",
              color: HexColor("333333").withOpacity(0.9),
              fontWeight: FontWeight.w400,
            ),),),




          SizedBox(height: 30,),



          Padding(
            padding:  EdgeInsets.only(right:4.0),
            child: Row(
              children: [
                SizedBox(width: 36,),
                Container(
                  width: 125,
                  height: 45,
                  child: MyButton(
                    BorderSide_color: Colors.black,
                    text: "Sign Out",
                    style:TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,

                    ),
                    onPressed: (){},
                  ),
                ),
                SizedBox(width: 45,),
                CircleAvatar(
                  backgroundColor: HexColor("333333").withOpacity(0.1),
                  child: Text("?",style: TextStyle(color: Colors.black,
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),),
                ),
                SizedBox(width: 80,),
                NextArrow(),
              ],
            ),
          ),
        ],
      ),

    );
  }
}