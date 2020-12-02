import 'package:fintech/my_button_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../home_page_pattern_view.dart';
import '../my_style_text.dart';

class CurrentLoanApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(

              children: [
                HomePagePatternView(),
                Padding(
                  padding:  EdgeInsets.only(top:95.0,left: 25.0,right: 25.0),
                  child: Card(
                    child: Container(
                      height: 300,
                      width: 361,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(height: 50.0,),

                              SizedBox(width: 120.0,),


                              MyStyleText(
                                text: "Application ID:",
                                height: 18.0,
                                width: 86.0,
                                fontSize: 12.0,
                              ),
                              MyStyleText(
                                text: "72",
                                height: 18.0,
                                width: 86.0,
                                fontSize: 12.0,
                              ),

                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 35,),
                              Container(
                                height: 161,
                                width: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomLeft,
                                    colors: [Colors.red,HexColor("9C3D98")],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right:12.0),
                                    child: Text("Approved"),
                                  ),
                                  SizedBox(height: 43,),
                                  Padding(
                                    padding: EdgeInsets.only(left:12.0),
                                    child: Text("Under Review"),
                                  ),
                                  SizedBox(height: 43,),

                                  Text("In progress"),

                                ],
                              ),
                              Column(
                                children: [
                                  Text("Status"),
                                  MyStyleText(
                                    text: "Approved",
                                  ),
                                  MyStyleText(
                                    text: "Loan requested",
                                  ),
                                  Text("100,000 GHS"),

                                ],
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(right:280.0),
              child: MyStyleText(
                height: 30.0,
                width: 83.0,
                text: "Services",
                fontSize: 20.0,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 25,),

                Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin:Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [HexColor("333333").withOpacity(1.0), HexColor("E75348").withOpacity(1.0)])
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 23,),
                      Image.asset("asset/images/loan.png",scale: 4,),
                      SizedBox(height: 10,),

                      Container(
                          height: 36,
                          width: 88,
                          child: Text("Apply for a Loan",style: TextStyle(
                            color: Colors.white,
                          ),textAlign: TextAlign.center,)),
                    ],
                  ),
                ),

                SizedBox(width: 10,),
                Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: HexColor("FA5E64").withOpacity(1.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 23,),
                      Image.asset("asset/images/money.png",scale: 1,),
                      SizedBox(height: 10,),

                      Container(
                          height: 36,
                          width: 88,
                          child: Text("Open Savings Account",style: TextStyle(
                            color: Colors.white,
                          ),textAlign: TextAlign.center,)),
                    ],
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: HexColor("333333").withOpacity(0.8),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 23,),
                      Image.asset("asset/images/file.png",scale: 4,),
                      SizedBox(height: 10,),

                      Container(
                          height: 36,
                          width: 88,
                          child: Text("Book Appointment",style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,)),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.only(right:180.0),
              child: MyStyleText(
                height: 30.0,
                width: 175.0,
                text: "Entrepreneur Hub",
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.only(right:35.0),
              child: MyStyleText(
                height: 42.0,
                width: 319.0,
                text: "Find inspiration on how to make your business become the best it can be in various areas",
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 10,),
            Card(
              elevation: 2,


              child: Container(
                height: 130,
                width: 353,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),),
                child: Row(
                  children: [
                    Image.asset("asset/images/finance.png"),
                    SizedBox(width: 20,),
                    MyStyleText(
                      height: 24.0,
                      width: 92.0,
                      fontSize: 16.0,
                      text: "Accounting",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            Card(
              elevation: 2,


              child: Container(
                height: 130,
                width: 353,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),),
                child: Row(
                  children: [
                    SizedBox(width: 40,),

                    MyStyleText(
                      text: "Sales",
                      height: 24.0,
                      width: 43.0,
                      fontSize: 16.0,
                    ),
                    SizedBox(width: 50,),
                    Image.asset("asset/images/invest.png"),
                    SizedBox(width: 10,),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
