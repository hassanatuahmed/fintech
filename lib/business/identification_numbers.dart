import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_button_screen.dart';
import 'employees.dart';
import 'name.dart';

class IdentificationNumbers extends StatefulWidget {
  @override
  _IdentificationNumbersState createState() => _IdentificationNumbersState();
}

class _IdentificationNumbersState extends State<IdentificationNumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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

            Padding(
              padding: EdgeInsets.only(left:30.0),
              child: Container(
                height: 102,
                width: 380,
                child: Text("Identification\nNumbers",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 34,
                ),),
              ),
            ),

            SizedBox(height:35),

            Padding(
              padding: EdgeInsets.only(right:310.0),
              child: Text("1 of 2",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),

            Container(
              height: 60,
                width: 341,
                child: Text("What is your Business Registration Number",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                ),),),

            SizedBox(height:20),


            MyText(
              hintText: "Number",
              hintText_color:Colors.white ,
              fillColor: HexColor("#333333"),
            ),

            SizedBox(height:60),

            Padding(
              padding: EdgeInsets.only(right:310.0),
              child: Text("2 of 2",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),



            Padding(
              padding: EdgeInsets.only(left:15.0),
              child: Container(
                width: 360,
                  height: 60,
                  child: Text("What is your Tax Identification \nNumber",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                  ),),),
            ),

            SizedBox(height:20),

            MyText(
              hintText: "TIN",
              hintText_color:Colors.white ,
              fillColor: HexColor("#333333"),
            ),
            SizedBox(height:70),


            Row(
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
                SizedBox(width: 50,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Employees(),
                          fullscreenDialog: true)
                      );
                    },
                    child: NextArrow()),
              ],
            ),
            SizedBox(height:35),


          ],
        ),
      ),
    );
  }
}
