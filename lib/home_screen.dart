import 'package:fintech/pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'custom_button.dart';
import 'custom_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var constant;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              PatternView(
                //backgroundColor: Colors.blue,
                gradient: LinearGradient(
                  colors: [Colors.red,Colors.pink],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),

                image: "asset/images/pay_online.png",
                text: "Hi,Welcome Back,Nasom",
                pattern: Pattern.Personal,
              ),





              Container(
                color: Colors.white,
                child: Padding(

                  padding: const EdgeInsets.only(top:0.0,right: 30.0,left: 30.0),
                  child: Column(
                    children: [

                      Container(
                        alignment: Alignment.centerLeft,
                        color: Colors.white,
                        child: Text("Sign In",style: TextStyle(
                          fontSize: 20,
                          color: HexColor("#333333"),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                        ),),
                      ),
                      SizedBox(height: 17,),
                      CustomField(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Email',

                      ),
                      SizedBox(height: 20,),

                      CustomField(
                        prefixIcon: Icon(Icons.lock_outline),
                        hintText: '*************',

                      ),
                      SizedBox(height: 7,),

                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("forget password?",style: TextStyle(
                            color: Colors.red,
                        fontSize: 12,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),),
                      ),
                      SizedBox(height: 15,),
                      CustomMatButton(
                        onPressed: (){},
                        text: "Sign In",
                        color: Colors.red,
                        textColor: Colors.white,
                      ),

                      SizedBox(height: 20,),

                      CustomOutlineButton(

                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: "Poppins",
                          fontSize: 16,
                        ),
                        text: ("Sign in with FingerPrint"),
                        side: BorderSide(color: Colors.blue),
                        onPressed: (){},
                      ),
                      SizedBox(height: 20),
                      Text("Create Account",style: TextStyle(
                        fontStyle: FontStyle.normal,

                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontSize: 16,
                      ),),
                      SizedBox(height: 15,),
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