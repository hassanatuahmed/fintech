import 'package:dotted_border/dotted_border.dart';
import 'package:fintech/custom_button.dart';
import 'package:fintech/my_style_text.dart';
import 'package:fintech/portal/pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../home_page_pattern_view.dart';
import '../pattern_view.dart';

class LoanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
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
              padding: EdgeInsets.only(left:20.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      MyStyleText(
                        text: "Repayment Settings",
                        fontSize: 24.0,
                        height: 36.0,
                        width: 243.0,
                      ),

                    ],
                  ),
                ],
              ),
            ),
            Row(
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
            Padding(
              padding: EdgeInsets.only(left:280.0),
              child: DropdownButton(

              ),
            ),
            Row(
              children: [
                SizedBox(width: 5,),
                MyStyleText(
                  text: "Histories",
                  height: 36.0,
                  width: 102.0,
                  fontSize: 24.0,

                ),
                SizedBox(width: 70,),

                //Container(
                 // height: 55,
                  //width: 230,
                  //child: MaterialButton(

                    //child:Text("set-up auto payments"),
                    //onPressed: (){


                     // }

                 // ),
                //),


              ],
            ),
            Row(
              children: [
                SizedBox(width: 15,),

                Container(
                  width: 90,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: HexColor("333333").withOpacity(0.8),
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
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}

class SlidingButton extends StatefulWidget {


  @override
  _SlidingButtonState createState() => _SlidingButtonState();
}

class _SlidingButtonState extends State<SlidingButton> {

  void slidingSheet(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            color: Colors.black,
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("hello"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("hello"),
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
          onPressed: slidingSheet,
          child: Text('set-up auto payments'),
        ),
      ),

    );
  }
}






