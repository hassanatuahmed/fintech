        import 'package:fintech/custom_button.dart';
        import 'package:flutter/cupertino.dart';
        import 'package:flutter/material.dart';
        import 'package:hexcolor/hexcolor.dart';

        class PinVerified extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              backgroundColor: HexColor("#333333"),

              body: Center(
                    child: Column(
                      children: [
                       Padding(
                         padding: EdgeInsets.only(bottom:10.0,top:20,left: 230),
                          child: Container(
                              width: 100,
                              height: 40,
                              child: MyButton(

                                text: "Sign Out",
                                style:TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,

                                ),
                                onPressed: (){},
                              ),
                            ),
                          ),
                          Padding(
                                  padding: EdgeInsets.only(top:10.0,bottom: 10),
                                  child: Image.asset("asset/images/pin.png",scale: 4,),
                    ),
                          Container(
                              height: 80,
                              width: 321,
                              child: Center(
                                 child: Text("Pin Succesfully Verified",style: TextStyle(
                                 fontSize: 34,
                                fontFamily: "Poly",
                                   color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
            ),
                                   textAlign: TextAlign.center,
                            ),
                            ),
                            ),
                            SizedBox(height: 20,),

                            Container(
                            height: 72,
                            width: 268,
                              child: Text("The next step is to complete the following sections of the loan application",style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                                color: Colors.white,

                            ),textAlign: TextAlign.center,
                            ),
                            ),
                            SizedBox(height: 10,),

                      Text("Select Personal to start",style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        color: Colors.white,
            ),),
                      SizedBox(height: 20,),

                        MyButton(
                        text: "Personal",
                        style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: Colors.white,

                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                        ),
                        onPressed: (){},
                        ),
                       SizedBox(height: 10,),

                      MyButton(
                      text: "Business",
                      style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      color: Colors.white,

                      fontWeight: FontWeight.w300,
                      ),
                      onPressed: (){},
                      ),
                      SizedBox(height: 10,),

                      MyButton(
                      text: "Client Guarantor Information",
                      style: TextStyle(fontSize: 14,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,),
                      onPressed: (){},
                      ),





            ],
            ),
              ),
            );
          }
        }
        class MyButton extends StatelessWidget {
          MyButton({this.onPressed,this.text,this.style,this.color});
          final onPressed;
          final text;
          final style;
          final color;
          @override
          Widget build(BuildContext context) {
            return Container(
              width: 267,
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.white,width: 0.2),

                ),
                child: Text(text,style: style,),
              ),
            );
          }
        }

