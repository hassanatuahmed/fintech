import 'package:dotted_border/dotted_border.dart';
import 'package:fintech/custom_button.dart';
import 'package:fintech/my_style_text.dart';
import 'package:fintech/portal/loan_payment.dart';
import 'package:fintech/portal/pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

import '../home_page_pattern_view.dart';
import '../pattern_view.dart';

class LoanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();


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
            Padding(
              padding: EdgeInsets.only(left:215.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(22),
                    bottomLeft:Radius.circular(22) )),

                height: 45,
                minWidth: 200,
                color: HexColor("#ED1C24"),

                onPressed: (){
                  _newModalBottomSheet(context);
                },
                child: Text("Set-up Auto Payments",style: TextStyle(color: Colors.white),),
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
void _payMethodModalBottomSheet(context){
  showModalBottomSheet(

      context: context,
      builder: (BuildContext bc){
        return Container(
          child: new Wrap(
            children: <Widget>[
              Column(
                children: [
                  SizedBox(height: 22,),
                  Container(
                    height: 6,
                    width: 60,
                    color: HexColor("#333333").withOpacity(0.22),

                  ),
                  Padding(
                    padding: EdgeInsets.only(top:49,right:130.0,bottom: 25.0),
                    child: MyStyleText(
                      text: "Payment Method",
                      height: 36.0,
                      width: 205.0,
                      fontSize: 24.0,
                      color: HexColor("#333333"),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 40,),
                      Container(
                        width: 103,
                        child: CustomMatButton(
                          text: "Bank",
                          color: HexColor("#F2F2F2"),
                          textColor: Colors.black,
                          onPressed: (){},
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(width: 30,),

                      Container(
                        width: 112,
                        child: CustomMatButton(
                          text: "Wallet",
                          color: HexColor("#333333"),
                          textColor: Colors.white,
                          onPressed: (){},
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  CustomMatButton(
                    text: "Done",
                    color: HexColor("#ED1C24"),
                    textColor: Colors.white,
                    onPressed: (){},
                    fontSize: 16.0,
                  ),
                  SizedBox(height: 30,),
                ],
              ),

            ],
          ),
        );
      }
  );
}
void _newModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(
          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight:  Radius.circular(20.0))),

          child: new Wrap(
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
                        GestureDetector(
                          onTap: (){
                            _payMethodModalBottomSheet(context);
                          },
                          child: MyStyleText(
                            text: "Payment Method",
                            fontSize: 20.0,
                            color: HexColor("#333333").withOpacity(0.65),
                            height: 30.0,
                            width: 171.0,
                          ),
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
                    child: GestureDetector(
                      onTap: (){
                        //_dateModalBottomSheet(context);
                        _dateModalBottomSheet(context);
                      },
                      child: MyStyleText(
                        text: "Choose start date",
                        color: Colors.red,
                        height: 30.0,
                        fontSize: 20.0,
                        width: 184.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  CustomMatButton(
                    text: "Done",
                    color: HexColor("#ED1C24"),
                    textColor: Colors.white,
                    onPressed: (){},
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ],
          ),

        );

      },
    isScrollControlled: true,
  );
}
void _dateModalBottomSheet(context){
  showModalBottomSheet(
    isScrollControlled: true,
      context: context,
      builder: (BuildContext bc){
        return Container(
          child: Wrap(
            children:<Widget> [
              Column(
                children: [
                  SizedBox(height: 30,),
                  MyStyleText(
                    text: "Start Date",
                    height: 36.0,
                    width: 120.0,
                    fontSize: 24.0,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 379,
                    width: 328,
                    child: Card(
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime(1900,1,1),
                        onDateTimeChanged: (DateTime newDateTime){},

                      ),
                    ),
                  ),
                  SizedBox(height: 35,),

                  Padding(
                    padding: EdgeInsets.only(left:40.0),
                    child: CustomMatButton(
                      text: "Done",
                      color: HexColor("#ED1C24"),
                      textColor: Colors.white,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoanPayment()));
                      },
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 35,),
                ],
              ),
            ],
          ),
        );
      }
  );
}


















