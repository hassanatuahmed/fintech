import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'full_name.dart';
import '../custom_field.dart';

class SecurityQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              color:Colors.white,
              color1:Colors.white,
              color2:Colors.white,
              color3:Colors.black,
              icon: Icons.keyboard_backspace,
              text: "Create Account",
              gradient: LinearGradient(colors: [Colors.red,Colors.pink],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            Container(
              color: Colors.white,
            width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.height * 0.75,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SecondHeader(
                        text: "Final questions to make sure your \n account is always secure",
                      ),

                    ],
                  ),
                  SizedBox(height: 17,),
                  Padding(
                    padding: const EdgeInsets.only(left:53.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: HexColor("333333"),width: 0.1)

                      ),
                      width: 290,
                      height: 217,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right:140.0,top: 15.0,bottom: 10),
                                child: Text("7. Security Questions"),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),

                          Padding(
                            padding: EdgeInsets.only(left:25.0,right: 20,bottom: 30),
                            child: CustomField(


                              hintText: "Select Question",
                              prefixIcon: Icon(null),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right:140.0,bottom: 10),
                            child: Text("Security Answer "),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:25.0,right: 20),
                            child: CustomField(
                              hintText: "null",
                              prefixIcon: Icon(null),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                  SizedBox(height: 17,),
                  Padding(
                    padding: EdgeInsets.only(left:50.0),
                    child: Container(
                      width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: HexColor("333333"),width: 0.1),),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(right:190.0,top: 10,bottom: 10),
                            child: Text("8. Password"),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left:30.0,right: 20.0,bottom: 20),
                            child: CustomField(
                              hintText: "",
                              prefixIcon: Icon(null),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right:110.0,bottom: 10),
                            child: Text("Confirm Password"),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left:30.0,right: 20.0,bottom: 1),
                            child: CustomField(
                              hintText: "",
                              prefixIcon: Icon(null),
                            ),
                          ),

                        ],
                      ),

                      ),
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

