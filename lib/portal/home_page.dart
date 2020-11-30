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
      body: Column(
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
                        child: Text("Apply for a Loan")),
                  ],
                ),
                ),
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
                        child: Text("Apply for a Loan")),
                  ],
                ),
              ),
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
                        child: Text("Apply for a Loan")),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}



