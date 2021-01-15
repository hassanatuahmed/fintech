import 'package:dotted_border/dotted_border.dart';
import 'package:fintech/custom_button.dart';
import 'package:fintech/my_style_text.dart';
import 'package:fintech/portal/pattern_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:getwidget/getwidget.dart';

import '../pattern_view.dart';

class LoanPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                PortalPatternView(),
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
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right:140.0),
              child: MyStyleText(
                text: "Loan Payments",
                fontSize: 24.0,
                height: 36.0,
                width: 184.0,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 23.0,),
                      CircularPercentIndicator(
                        radius: 150.0,
                        lineWidth: 13.0,
                        animation: true,
                        percent: 0.7,
                        center: new Text(
                          "70.0%",
                          style:
                          new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        footer: new Text(
                          "",
                          style:
                          new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: HexColor("#ED1C24"),
                        backgroundColor: HexColor("#FFB8BB"),
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: HexColor("#FFB8BB"),
                            ),
                            SizedBox(width: 5,),
                            MyStyleText(
                            text: "Unpaid",
                            fontSize: 12.0,
                            height: 18.0,
                            width: 44.0,),
                          ],
                        ),
                        MyStyleText(
                        text: "115,000 GHS",
                        fontSize: 20.0,
                        height: 30.0,
                        width: 140.0,),
                          SizedBox(height: 27,),

                          Row(
                          children: [
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: HexColor("#ED1C24"),
                            ),
                            SizedBox(width: 5,),

                            MyStyleText(
                            text: "Paid",
                            fontSize: 12.0,
                            height: 18.0,
                            width: 27.0,),
                          ],
                        ),
                        MyStyleText(
                        text: "0 GHS",
                        fontSize: 20.0,
                        height: 30.0,
                        width: 60.0,),


                        ],
                      ),
                    ],
                  ),
                  Row(

                    children: [
                      SizedBox(width: 33,),
                      MyStyleText(
                        text: "Next Due Date",
                        fontSize: 13.0,
                        height: 18.0,
                        width: 85.0,
                      ),
                      SizedBox(width: 75,),

                      MyStyleText(
                        text: "Amount Due",
                        fontSize: 13.0,
                        height: 18.0,
                        width: 85.0,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 33,),

                      MyStyleText(
                        text: "Sep 10, 2020",
                        fontSize: 20.0,
                        height: 30.0,
                        width: 120.0,
                      ),
                      SizedBox(width: 40,),

                      MyStyleText(
                        text: "320 GHS",
                        fontSize: 20.0,
                        height: 30.0,
                        width: 83.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),

            ),

              Divider(
                thickness: 2,

              ),
            Padding(
              padding: EdgeInsets.only(left:215.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(22),
                    bottomLeft:Radius.circular(22) )),

                height: 45,
                minWidth: 200,
                color: HexColor("#ED1C24"),

                onPressed: (){

                },
                child: Text("Make Payment",style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(height: 10,),

            GFAccordion(
                title: 'Repayments Made',textStyle: TextStyle(fontSize: 24.0,
            fontFamily: 'Poppins',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
                content: 'No repayments yet.When you make repayments, they will appear here',
                collapsedIcon: Icon(Icons.arrow_drop_up),
                expandedIcon: Icon(Icons.arrow_drop_down),
            ),

            Divider(
              thickness: 2,
            ),
            GFAccordion(
              title: 'Repayment Settings',textStyle: TextStyle(fontSize: 24.0),
              contentChild: Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),

                    DottedBorder(
                      color: Colors.black,
                      strokeWidth: 1,
                      child: Container(
                        height: 68,
                        width: 163,

                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:10.0,right: 50.0),
                              child: Text("Loan Tenure"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Row(
                                children: [
                                  Text("6 months"),
                                  SizedBox(width: 37,),
                                  Icon(Icons.create,color: Colors.red,),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    DottedBorder(
                      color: Colors.black,
                      strokeWidth: 1,
                      child: Container(
                        height: 68,
                        width: 163,

                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:10.0,right: 50.0),
                              child: Text("Loan Tenure"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Row(
                                children: [
                                  Text("6 months"),
                                  SizedBox(width: 37,),
                                  Icon(Icons.create,color: Colors.red,),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //content: 'No repayments yet.When you make repayments, they will appear here',
              collapsedIcon: Icon(Icons.arrow_drop_up),
              expandedIcon: Icon(Icons.arrow_drop_down),
            ),
            Padding(
              padding: EdgeInsets.only(left:20.0),

            ),

            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 115,
                  width: 5,
                  color:HexColor("#333333"),
                ),
                SizedBox(width: 21,),
                Column(
                  children: [
                    Text("Recommended Weekly Payments"),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right:25.0),
                          child: Text("320 GHS",style: TextStyle(
                            color: Colors.red,
                            fontSize: 34,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                        SizedBox(width: 21,),
                        Icon(Icons.create,color: Colors.red,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40,),

            Divider(
              thickness: 2,
            ),

            GFAccordion(
              title: 'Histories',textStyle: TextStyle(fontSize: 24.0),
              contentChild: Container(
                child: Row(
                  children: [
                    SizedBox(width: 15,),

                    Container(
                      width: 90,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: HexColor("333333").withOpacity(0.8),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Icon(Icons.history,color: Colors.white,),
                          Text("Application  History",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                          ),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 90,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: HexColor("333333").withOpacity(0.8),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Icon(Icons.history,color: Colors.white,),
                          Text("Loan  \nHistory",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                          ),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              collapsedIcon: Icon(Icons.arrow_drop_up),
              expandedIcon: Icon(Icons.arrow_drop_down),
            ),

            Row(
              children: [
                SizedBox(width: 5,),




                SizedBox(width: 70,),

              ],
            ),



          ],
        ),
      ),
    );
  }
}
