import 'package:fintech/create_account_screens/pin_verification.dart';
import 'package:fintech/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'full_name_screen2.dart';
import '../custom_field.dart';
class Checkboxes extends StatelessWidget {
  get checkedValue => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(

            children: [
              Header(
                color: Colors.white,
                color1: Colors.white,
                color2: Colors.white,
                color3: Colors.white,
                icon: Icons.keyboard_backspace,
                text: "Create Account",
                gradient: LinearGradient(colors: [Colors.red, Colors.pink],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ],

          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.75,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SecondHeader(
                      text: "Some checkboxes before\n submittion",
                    ),

                  ],
                ),
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0, left: 60.0),
                  child: Container(
                    width: 290,
                    height: 144,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.1, color: HexColor("333333"),),

                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 23,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: HexColor("F2F2F2"),
                              ),
                            ),
                            SizedBox(width: 23,),
                            


                            Container(
                            height: 36,
                            width: 145,
                            child: Text("I have read the Terms \n and Services"))
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: HexColor("F2F2F2"),
                              ),
                            ),
                            SizedBox(width: 23,),
                            Container(
                                height: 36,
                                width: 145,
                                child: Text(
                                    "I want to receive \n promotional offers"))
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Spacer(),

                Padding(
                  padding: EdgeInsets.only(bottom: 50, right: 90, left: 90),
                  child: Container(
                    child: CustomMatButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      fontSize: 16.0,
                      text: "submit",
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => PinVerification(),
                            fullscreenDialog: true)

                        );
                      },

                    ),
                  ),
                ),


              ],
            ),

          ),


        ],
      ),

    );
  }
}




