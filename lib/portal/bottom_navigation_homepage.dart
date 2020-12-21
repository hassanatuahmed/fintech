

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import '../home_page_pattern_view.dart';
import '../my_style_text.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              children: [

                HomePagePatternView(),
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
                        SizedBox(width: 30,),
                        Stack(
                          children: [
                            Image.asset("asset/images/invest.png",scale: 4,),
                            Padding(
                              padding: EdgeInsets.only(left:100.0,right: 0.0),
                              child: GestureDetector(
                                onTap: (){
                                  showDialog(context: context,
                                  builder: (BuildContext context){
                                    return AlertDialog(
                                      titlePadding: EdgeInsets.all(0.0),
                                      contentPadding: EdgeInsets.all(0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      title: Container(
                                        height: 60,
                                          width: 300,
                                          color: HexColor("#F2F2F2"),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 20,),
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Image.asset("asset/images/cbg.png"),
                                              ),
                                              SizedBox(width: 20,),
                                              Text("Customer Service"),
                                            ],
                                          )),
                                      content: Container(
                                        height: 400,
                                      ),
                                      actions: [],
                                    );
                                  }
                                  );

                                },

                                  child: Image.asset("asset/images/chat.png")),
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),

                      ],
                    ),
                  ),
                ),
              ],
            ),


        ),
      ),
    );
  }
}
