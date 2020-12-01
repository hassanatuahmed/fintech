import 'package:fintech/home_page_pattern_view.dart';
import 'package:fintech/my_style_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_button_screen.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePagePatternView(),
            MyStyleText(
              height: 30.0,
              width: 83.0,
              text: "Services",
              fontSize: 20.0,
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
                          child: Text("Book Appointment",style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,)),
                    ],
                  ),
                ),

              ],
            ),
            MyStyleText(
              height: 30.0,
              width: 175.0,
              text: "Entrepreneur Hub",
              fontSize: 20.0,
            ),
            MyStyleText(
              height: 42.0,
              width: 319.0,
              text: "Find inspiration on how to make your business become the best it can be in various areas",
              fontSize: 14.0,
            ),
            Container(
              height: 120,
              width: 353,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),

                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset("asset/images/finance.png"),
                  MyStyleText(
                    height: 24.0,
                    width: 92.0,
                    fontSize: 16.0,
                    text: "Accounting",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



