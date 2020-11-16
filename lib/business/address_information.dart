import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/create_account_screens/full_name.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/second_pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'name.dart';
class BusinessAddress extends StatefulWidget {
  @override
  _BusinessAddressState createState() => _BusinessAddressState();
}

class _BusinessAddressState extends State<BusinessAddress> {
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
            color7: Colors.black,
            color8: Colors.black,
          ),
          Container(
            height: 153,
            width: 360,
            child: Text("Address Information",style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontFamily: "Poppins",
              color: HexColor("333333").withOpacity(0.9),
              fontWeight: FontWeight.w400,
            ),),),


          SizedBox(height: 28,),

          Container(
            height: 60,
            width: 339,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(30.0),
                color: HexColor("#333333"),
                border: Border.all()),
            child: Padding(
              padding: EdgeInsets.only(right:8.0,left: 8.0),
              child: DropdownButtonFormField<String>(

                hint: Text("Business Type",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                ),),
                value: selected,

                items: ["three", "two", "one"]
                    .map((label) => DropdownMenuItem(
                  child: Text(label),
                  value: label,
                ))
                    .toList(),
                onChanged: (value) {
                },


              ),
            ),
          ),

          SizedBox(height: 100,),


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
