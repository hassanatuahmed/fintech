import 'package:fintech/custom_button.dart';
import 'package:fintech/my_style_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

import '../pattern_view.dart';
class StartDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 425,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.red.withOpacity(0.3),Colors.red.withOpacity(0.3)],),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 100,),


                      Image.asset("asset/images/account.png",color: Colors.white,),
                    ],
                  ),

                ),
                Padding(
                  padding: EdgeInsets.only(top:60.0,left:20.0,right: 20.0),
                  child: Container(
                    height: 192,
                    width: 371,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.red,HexColor("9C3D98")],),


                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left:23.0,top: 14),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Name of Loan",style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                              ),),
                              SizedBox(width: 162,),
                              Image.asset("asset/images/polygon.png"),
                            ],
                          ),
                          SizedBox(height: 23,),
                          Padding(
                            padding: EdgeInsets.only(right:240),
                            child: Text("Approved Amount",style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w200,
                              fontFamily: "Poppins",
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right:145),
                            child: Text("100,000 GHS",style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),),
                          ),
                          SizedBox(height: 17,),
                          Row(
                            children: [
                              Text("Interest Rate",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Poppins",
                              ),),
                              SizedBox(width: 55,),
                              Text("Loan ID",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Poppins",
                              ),),
                              SizedBox(width: 55,),
                              Text("Loan Agreement",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Poppins",
                              ),),
                            ],
                          ),

                          Row(
                            children: [
                              Text("15%",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),),
                              SizedBox(width: 85,),

                              Text("174",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),),
                              SizedBox(width: 60,),

                              Icon(Icons.remove_red_eye,color: Colors.white,),
                              SizedBox(width: 20,),

                              Icon(Icons.cloud_download,color: Colors.white,),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:110.0),
                  child: Container(
                    height: 624,
                    width: 411,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,

                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 22,),
                        Container(
                          height: 6,
                          width: 60,
                          color: HexColor("#333333").withOpacity(0.22),

                        ),
                        SizedBox(height: 45,),
                        MyStyleText(
                          text: "Start Date",
                          fontSize: 24.0,
                          width: 120.0,
                          height: 36.0,
                        ),



                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






