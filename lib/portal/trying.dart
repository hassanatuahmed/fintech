import 'package:dotted_border/dotted_border.dart';
import 'package:fintech/portal/pattern_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../custom_button.dart';
import '../my_style_text.dart';



class MySliding extends StatefulWidget {
  MySliding({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MySlidingState createState() => _MySlidingState();
}

class _MySlidingState extends State<MySliding> {
  void slideSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(height: 22,),
                      Container(
                        height: 6,
                        width: 60,
                        color: HexColor("#333333").withOpacity(0.22),

                      ),
                      SizedBox(height: 45,),

                      Padding(
                        padding: EdgeInsets.only(right:100.0),
                        child: MyStyleText(
                          text: "Auto Payment Set-up",
                          color: HexColor("#333333"),


                          height: 36.0,
                          width: 259.0,
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(height: 40,),

                      Padding(
                        padding: EdgeInsets.only(left:30.0),
                        child: Row(
                          children: [
                            MyStyleText(
                              text: "Payment Method",
                              fontSize: 20.0,
                              color: HexColor("#333333").withOpacity(0.65),
                              height: 30.0,
                              width: 171.0,
                            ),
                            SizedBox(width: 30,),
                            MyStyleText(
                              text: "Wallet",
                              color: HexColor("#333333"),
                              height: 30.0,
                              fontSize: 20.0,
                              width: 63.0,
                            ),
                            SizedBox(width: 20,),

                            Icon(Icons.create,color: Colors.red,),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: EdgeInsets.only(right:170.0),
                        child: MyStyleText(
                          text: "Account Details",
                          color: HexColor("#333333").withOpacity(0.65),

                          height: 30.0,
                          fontSize: 20.0,
                          width: 184.0,
                        ),

                      ),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Container(
                            height: 41,
                            width: 70,
                            child: CustomMatButton(
                              text: "MTN",
                              onPressed: (){},
                              textColor: Colors.black,
                              color: HexColor("#F2F2F2"),

                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 41,
                            width: 109,
                            child: CustomMatButton(
                              text: "Vodafone",
                              onPressed: (){},
                              textColor: Colors.white,
                              color: HexColor("#333333"),

                            ),
                          ),
                          SizedBox(width: 20,),

                          Container(
                            height: 41,
                            width: 105,
                            child: CustomMatButton(
                              text: "AirtelTigo",
                              onPressed: (){},
                              textColor: Colors.black,
                              color: HexColor("#F2F2F2"),

                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: EdgeInsets.only(right:130.0),
                        child: MyStyleText(
                          text: "Mobile Wallet Number",
                          color: HexColor("#333333").withOpacity(0.65),
                          height: 30.0,
                          fontSize: 20.0,
                          width: 220.0,
                        ),
                      ),
                      SizedBox(height: 15,),

                      Padding(
                        padding: EdgeInsets.only(right:130.0),
                        child: Container(
                            width: 216,
                            height: 20,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Number",
                              ),
                            )),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: EdgeInsets.only(right:160.0),
                        child: MyStyleText(
                          text: "Choose start date",
                          color: Colors.red,
                          height: 30.0,
                          fontSize: 20.0,
                          width: 184.0,
                        ),
                      ),
                      SizedBox(height: 60,),
                      CustomMatButton(
                        text: "Done",
                        color: HexColor("#ED1C24"),
                        textColor: Colors.white,
                        onPressed: (){},
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),



                ],
              ),
            ),
          );
        });
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: slideSheet,
          child: Text('Show button'),

        ),
      ),


    );
  }
}