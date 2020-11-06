import 'package:fintech/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PinVerification extends StatelessWidget {
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
            Row(
              children: [
                Image.asset('asset/images/phone.png',scale: 4,),
                Image.asset('asset/images/phone.png',scale: 4,),
              ],
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("PIN Verification",style: TextStyle(
                fontStyle: FontStyle.normal,
                fontFamily: "Poly",
                fontSize: 34,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),),
            ),
            SizedBox(height: 62,),
            Container(
                child: Text(
                    "Please input the 4-digit PIN that \n was sent to your phone number")),
            SizedBox(height: 20,),

            Text("(000) 000-0000"),
            SizedBox(height: 60,),


            Row(
              children: [
                SizedBox(width: 90,),

                Container(
                  color: Colors.white,
                  height: 3,
                  width: 40,
                ),
                SizedBox(width: 20,),
                Container(
                  color: Colors.white,
                  height: 3,
                  width: 40,
                ),
                SizedBox(width: 20,),

                Container(
                  color: Colors.white,
                  height: 3,
                  width: 40,
                ),
                SizedBox(width: 20,),

                Container(
                  color: Colors.white,
                  height: 3,
                  width: 40,
                ),
                SizedBox(width: 90,),




              ],
            ),
            SizedBox(height: 34,),


            Text("Resend PIN",style: TextStyle(
              color: Colors.white,
              fontSize:16,
              fontFamily: "Poppins",

            ),),
            SizedBox(height: 27,),


            CustomMatButton(
              text: "verify",
              onPressed: (){},
              color: Colors.white,

            ),
            SizedBox(height: 28,),


          ],
        ),
      ),
    );
  }
}



