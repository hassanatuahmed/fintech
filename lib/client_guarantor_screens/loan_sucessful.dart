import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/custom_button.dart';
import 'package:fintech/portal/bottom_navigation_homepage.dart';
import 'package:fintech/portal/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoanSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        //height:MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red,Colors.purple],

              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),


            Image.asset('asset/images/wallet.png',scale: 4,),


            SizedBox(height: 20,),
            Container(
              height: 120,
              width: 309,
              child: Text("Congrats!\nYou’ve successful applied for a loan",style: TextStyle(
                fontStyle: FontStyle.normal,
                fontFamily: "Poly",
                fontSize: 34,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
                textAlign: TextAlign.center,),
            ),
            SizedBox(height: 62,),
            Container(
              height: 72,
                width: 268,
                child: Text(
                  "Our team is reviewing your \napplication and will contact you \nsoon!",style: TextStyle(
                  color: Colors.white,
                  fontSize:16,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,

                ),
                textAlign: TextAlign.center,)),
            SizedBox(height: 20,),


            Container(
              width: 268,
              child: CustomMatButton(
                textColor: HexColor("#ED1C24"),
                text: "Home",
                fontSize: 16.0,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen(),
                      fullscreenDialog: true)
                  );
                },
                color: Colors.white,

              ),
            ),
            SizedBox(height: 28,),


          ],
        ),
      ),
    );
  }
}



