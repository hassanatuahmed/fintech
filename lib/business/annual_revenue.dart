import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/create_account_screens/full_name.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/second_pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class AnnualRevenue extends StatefulWidget {
  @override
  _AnnualRevenueState createState() => _AnnualRevenueState();
}

class _AnnualRevenueState extends State<AnnualRevenue> {
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
            color5: Colors.black,
            color6: Colors.black,
            color7: Colors.black,
            color8: Colors.black,
          ),
          Container(
            height: 153,
            width: 360,
            child: Text("What is your Annual Revenue?",style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontFamily: "Poppins",
              color: HexColor("333333").withOpacity(0.9),
              fontWeight: FontWeight.w400,
            ),),),


          SizedBox(height: 28,),
          Container(
            height: 10,
            width: 360,
            color: Colors.red,
          ),

          SizedBox(height: 12,),



          Row(
            children: [
              SizedBox(width: 22,),
              Text("50-100k"),
              SizedBox(width: 22,),
              Text("101- 250k"),
              SizedBox(width: 22,),
              Text("251 - 500k"),
              SizedBox(width: 22,),
              Text("251 - 500k"),
              SizedBox(width: 22,),
              Text("1M+"),
            ],
          ),

          SizedBox(height: 40,),
          Padding(
            padding:  EdgeInsets.only(right:320.0),
            child: Text("GHC",style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              fontSize: 16,
              fontStyle: FontStyle.normal,
            ),),
          ),

          Padding(
            padding: EdgeInsets.only(right:80.0),
            child: Text("251,000 - 500,000 ",style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontFamily: "Poppins",
              color: HexColor("333333").withOpacity(0.9),
              fontWeight: FontWeight.w400,
            ),),
          ),

          SizedBox(height: 45,),


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
