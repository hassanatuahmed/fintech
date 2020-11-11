import 'package:fintech/create_account_screens/pin_successfully_verified_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NextBusiness extends StatelessWidget {
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




            Text("Select Personal to start",style: TextStyle(
              fontSize: 16,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),),
            SizedBox(height: 20,),

            MyButton(
              BorderSide_color: Colors.white,
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
              BorderSide_color: Colors.white,
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
              BorderSide_color: Colors.white,
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