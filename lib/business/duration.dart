import 'package:fintech/business/annual_revenue.dart';
import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/my_slider.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_button_screen.dart';
class HowLong extends StatefulWidget {
  @override
  _HowLongState createState() => _HowLongState();
}

class _HowLongState extends State<HowLong> {
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
            color4: Colors.black,
            color5: Colors.black,
            color6: Colors.black,
            color7: Colors.black,
            color8: Colors.black,
          ),
          Container(
            height: 102,
            width: 360,
            child: Text("How long have you been in Business?",style: TextStyle(
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
            child: MySlider(),
          ),

          SizedBox(height: 12,),



          Row(
            children: [
              SizedBox(width: 36,),
              Text("1 - 5"),
              SizedBox(width: 36,),
              Text("6- 10"),
              SizedBox(width: 36,),
              Text("11- 20"),
              SizedBox(width: 36,),
              Text("21 - 30"),
              SizedBox(width: 36,),
              Text("30+"),
            ],
          ),

          SizedBox(height: 40,),

          Padding(
            padding: EdgeInsets.only(right:280.0),
            child: Text("30+",style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontFamily: "Poppins",
              color: HexColor("333333").withOpacity(0.9),
              fontWeight: FontWeight.w400,
            ),),
          ),

          SizedBox(height: 75,),


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
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AnnualRevenue(),
                          fullscreenDialog: true)
                      );
                    },
                    child: NextArrow()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
