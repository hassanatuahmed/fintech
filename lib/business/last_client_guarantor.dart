import 'package:fintech/button_two.dart';
import 'package:fintech/client_guarantor_screens/guarantor%E2%80%99s_name.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_button_screen.dart';

class ClientGuarantor extends StatelessWidget {
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
            SizedBox(height: 240,),


            Text("Last  is Client Guarantor Information",style: TextStyle(
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
            SizedBox(height: 15,),

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

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GurantorName(),
                  fullscreenDialog: true,
                ),
                );
              },
              child: MyButton(
                BorderSide_color: Colors.white,
                text: "Client Guarantor Information",
                style: TextStyle(fontSize: 14,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,),
                onPressed: (){},
              ),
            ),
            SizedBox(height: 90,),

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