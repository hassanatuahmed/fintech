import 'package:fintech/create_account_screen1.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'custom_field.dart';

class CreateAccount2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(

            children: [

              Header(
                color:Colors.white,
                color1:Colors.white,
                color2:Colors.black,
                color3:Colors.black,
                icon: Icons.keyboard_backspace,
                text: "Create Account",
                gradient: LinearGradient(colors: [Colors.red,Colors.pink],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),

            ],

          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.75,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SecondHeader(
                      text: "Tell us the different ways you \n can be contacted",
                    ),

                  ],
                ),
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0,left: 50.0),
                  child: Container(

                    width: 290,
                    height: 104,
                    child: Column(
                      children: [
                         Padding(
                           padding: EdgeInsets.only(right:160.0),
                           child: Text("4. Mobile Number"),
                         ),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0,left: 0.0),
                          child: CustomField(


                            hintText: "(000) 000-000",
                            prefixIcon: Icon(Icons.flag),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: HexColor("333333"),width: 0.1))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0,left: 50.0),
                  child: Container(

                    width: 290,
                    height: 104,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right:160.0),
                          child: Text("5. Email Address"),
                        ),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0,left: 0.0),
                          child: CustomField(


                            hintText: "",
                            prefixIcon: Icon(null),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: HexColor("333333"),width: 0.1))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0,left: 50.0),
                  child: Container(

                    width: 290,
                    height: 104,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right:160.0),
                          child: Text("6. Digital Address"),
                        ),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0,left: 0.0),
                          child: CustomField(


                            hintText: "",
                            prefixIcon: Icon(null),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: HexColor("333333"),width: 0.1))
                    ),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.only(left: 300.0),

                    child:NextArrow()
                ),


              ],
            ),

          ),
        ],
      ),

    );
  }
}

