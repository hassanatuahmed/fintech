import 'package:fintech/business/duration.dart';
import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/my_slider.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_button_screen.dart';

class Employees extends StatefulWidget {
  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  double _value = 40.0;

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
              color3: Colors.black,
              color4: Colors.black,
              color5: Colors.black,
              color6: Colors.black,
              color7: Colors.black,
              color8: Colors.black,
          ),
          Container(
            height: 153,
              width: 360,
              child: Text("How many \nEmployees do you \nhave?",style: TextStyle(
                fontSize: 34,
                fontStyle: FontStyle.normal,
                fontFamily: "Poppins",
                color: HexColor("333333").withOpacity(0.9),
                fontWeight: FontWeight.w400,
              ),),),


          SizedBox(height: 28,),
          Container(
            child:  MySlider(),

            height: 10,
            width: 360,
            color: Colors.red,
          ),

          SizedBox(height: 12,),



          Row(
            children: [
              SizedBox(width: 36,),
              Text("1 - 10"),
              SizedBox(width: 36,),
              Text("10- 20"),
              SizedBox(width: 36,),
              Text("20 - 50"),
              SizedBox(width: 36,),
              Text("50 - 100"),
              SizedBox(width: 36,),
              Text("100+"),
            ],
          ),

          SizedBox(height: 40,),

          Padding(
            padding: EdgeInsets.only(right:280.0),
            child: Text("1- 10",style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontFamily: "Poppins",
              color: HexColor("333333").withOpacity(0.9),
              fontWeight: FontWeight.w400,
            ),),
          ),



          SizedBox(height: 55,),



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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HowLong(),
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


