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
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: EdgeInsets.only(left:20.0),
              child: Container(
                height: 51,
                width: 360,
                child: Text("Address Information",style: TextStyle(
                  fontSize: 34,
                  fontStyle: FontStyle.normal,
                  fontFamily: "Poppins",
                  color: HexColor("333333").withOpacity(0.9),
                  fontWeight: FontWeight.w400,
                ),),),
            ),

             SizedBox(height: 35,),
            Padding(
              padding: EdgeInsets.only(right: 300.0),
              child: Text("1 of 2",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:27.0,right: 30),
              child: Text("Upload Proof of Business Address",style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
              ),),
            ),
            SizedBox(height: 26,),

            Padding(
              padding: EdgeInsets.only(bottom:60.0,right: 150),
              child: Container(
                height: 200,
                width: 186,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top:27.0,bottom:20.0),
                      child: Image.asset("asset/images/bills.png",scale: 4,),
                    ),
                    Container(
                      height: 48,
                      width: 84,
                      child: Text("Electricity/Water Bill",style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                        textAlign: TextAlign.center,),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 300.0),
              child: Text("2 of 2",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),

            Padding(
              padding: EdgeInsets.only(left:20.0,bottom: 20),
              child: Container(
                height: 60,
                width: 360,
                child: Text("What’s your business’ digital \nAddress?",style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,

                ),),
              ),
            ),

            Container(
              height: 60,
              width: 339,
              child: Container(
                height: 60,
                width: 339,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  color: HexColor("#333333"),
                  onPressed: (){},
                  child: Row(
                    children: [
                      SizedBox(width: 15,),

                      Text("Digital Address",style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Poppins",
                          color: Colors.white),),
                      SizedBox(width: 160,),
                      Icon(Icons.location_on,color: Colors.white,),
                      SizedBox(width: 15,),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 97,),

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
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
