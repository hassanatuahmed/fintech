import 'package:fintech/button_two.dart';
import 'package:fintech/client_guarantor_screens/guarantor%E2%80%99s_name.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../custom_button.dart';
import '../my_button_screen.dart';
import 'loan_sucessful.dart';

class AllDone extends StatelessWidget {
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

                  BorderSide_color: Colors.white,
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
            SizedBox(height: 100,),


            Text("All Done!",style: TextStyle(
              fontSize: 16,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),),
            SizedBox(height: 20,),

            ButtonTwo(
              icon: Icons.check,
              BorderSide_color: HexColor("#1FE000"),
              text: "Personal",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Poppins",
                color: HexColor("#1FE000"),

                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
              ),
              onPressed: (){},
            ),
            SizedBox(height: 20,),

            ButtonTwo(
              icon: Icons.check,
              BorderSide_color: HexColor("#1FE000"),
              text: "Business",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                color: HexColor("#1FE000"),

                fontWeight: FontWeight.w300,
              ),
              onPressed: (){},
            ),
            SizedBox(height: 15,),

            Container(
              width: 267,
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: HexColor("#1FE000"),width: 0.3),

                ),
                child: Row(
                  children: [
                    SizedBox(width: 50,),

                    Text("Client Guarantor",style: TextStyle(
                      fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Poppins",
                        color: HexColor("#1FE000"),
                    )),
                    SizedBox(width: 30,),
                    Icon(Icons.check,color: HexColor("#1FE000")),
                  ],
                ),


              ),
            ),
            SizedBox(height: 10,),

            Text("To review, you can click each section",style: TextStyle(color: Colors.white),),
            SizedBox(height: 80,),

            Padding(
              padding: EdgeInsets.only(bottom: 50,right: 90,left: 90),
              child: Container(
                child: CustomMatButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  fontSize: 16,
                  text: "submit",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoanSuccessful(),
                        fullscreenDialog: true),

                   );
                  },

                ),
              ),
            ),

            SizedBox(height: 20,),

            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("?",style: TextStyle(color: Colors.black),),
            ),





          ],
        ),
      ),
    );
  }
}