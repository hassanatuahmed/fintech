import 'package:fintech/pattern_view.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/pin_successfully_verified_screen.dart';
import 'package:fintech/second_pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class PersonalScreen extends StatefulWidget {
  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SecondPatternView(
            color: Colors.white,
            color1: Colors.black,
            color2: Colors.black,
            color3: Colors.black,
          ),
          Container(
            height: 120,
              width: 339,
              child: Text("The following 5 questions have been pre-filled from creating an account. Double check them for accuracy",style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
              ),)),
          Container(

            child: Column(
              children: [
                SizedBox(height: 20,),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("  1.  Select Title")),
                SizedBox(height: 10,),
                Row(

                  children: [
                    SizedBox(width: 37,),
                    Container(
                      child: Center(child: Text("Mr",style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal),)),
                      height: 40,
                      width: 40,
                      decoration:BoxDecoration(
                          border: Border.all(color: Colors.red)),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Center(child: Text("Mrs",style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal),)),
                      height: 40,
                      width: 40,
                      decoration:BoxDecoration(
                          border: Border.all(color: Colors.red)),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      child: Center(child: Text("Ms",style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal),)),
                      height: 40,
                      width: 40,
                      decoration:BoxDecoration(
                          border: Border.all(color: Colors.red)),
                    ),
                  ],
                ),

              ],
            ),
            decoration:BoxDecoration(
              border: Border.all(color: HexColor("333333"),width: 0.1),

            ),
            width: 290,
            height: 104,

          ),

        ],
      )
    );
  }
}



