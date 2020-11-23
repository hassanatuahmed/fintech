import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/full_name_screen2.dart';
import 'package:fintech/create_account_screens/security_question_screen_four.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../custom_field.dart';

class MobileNumber extends StatelessWidget {
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
                           child: Text("4. Mobile Number",style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.w300,
                               fontStyle: FontStyle.normal,
                               fontFamily: "Poppins",
                               color: HexColor("#333333"),

                           ),),
                         ),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0,left: 0.0),
                          child: CustomField(


                            hintText: "(000) 000-000",
                            prefixIcon: Icon(Icons.flag,color: Colors.red,),
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
                          child: Text("5. Email Address",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Poppins",
                            color: HexColor("#333333"),
                          ),),
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
                          child: Text("6. Digital Address",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.normal,
                              fontFamily: "Poppins",
                              color: HexColor("#333333"),
                          ),),
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

                    child:GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>SecurityQuestion(),
                            fullscreenDialog: true,
                          ));
                        },
                        child: NextArrow())
                ),


              ],
            ),

          ),
        ],
      ),

    );
  }
}

