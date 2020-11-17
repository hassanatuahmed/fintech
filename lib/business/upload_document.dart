import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/create_account_screens/full_name.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'name.dart';
class UploadDocument extends StatefulWidget {
  @override
  _UploadDocumentState createState() => _UploadDocumentState();
}

class _UploadDocumentState extends State<UploadDocument> {
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
            color8: Colors.black,
          ),
          Container(
            height: 51,
            width: 356,
            child: Text("Upload Documents",style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontFamily: "Poppins",
              color: HexColor("333333").withOpacity(0.9),
              fontWeight: FontWeight.w400,
            ),),),


          SizedBox(height: 28,),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 30,),

                Container(
                  height:220,
                  width: 186,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: HexColor("#333333"),width: 1),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:30.0,bottom: 40),
                        child: Image.asset("asset/images/form.png",scale: 4,),
                      ),
                      Container(
                          width: 160,
                          height: 48,
                          child: Container(
                              height: 48,
                              width: 152,
                              child: Text("Form 4",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                              ),textAlign: TextAlign.center,))),
                    ],
                  ),
                ),

                SizedBox(width: 30,),

                Container(
                  height:200,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: HexColor("#333333"),width: 1),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:30.0,bottom: 40),
                        child: Image.asset("asset/images/feedback.png",scale: 4,),
                      ),
                      SizedBox(width: 30,),

                      Container(
                          width: 160,
                          height: 48,
                          child: Container(
                              height: 72,
                              width: 167,
                              child: Text("DT101 Company Self Assesment Return for Previous Year",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                              ),textAlign: TextAlign.center,))),
                    ],
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  height:200,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: HexColor("#333333"),width: 1),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:30.0,bottom: 40),
                        child: Image.asset("asset/images/financial-statement.png",scale: 4,),
                      ),
                      Container(
                          width: 160,
                          height: 48,
                          child: Container(
                              height: 48,
                              width: 152,
                              child: Text("Bank Statements(last 3 months)",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                              ),textAlign: TextAlign.center,))),
                      SizedBox(width: 30,),

                    ],
                  ),
                ),
              ],
            ),
          ),

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
          SizedBox(height: 20,),

        ],
      ),

    );
  }
}