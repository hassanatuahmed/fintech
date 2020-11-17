import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/create_account_screens/full_name.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/custom_button.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_style_text.dart';
import 'name.dart';
class LoanInformation extends StatefulWidget {
  @override
  _LoanInformationState createState() => _LoanInformationState();
}

class _LoanInformationState extends State<LoanInformation> {
  get selected => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            BusinessPatternView(
              color: Colors.white,
              color1: Colors.white,
              color2: Colors.white,
              color3: Colors.white,
              color4: Colors.white,
              color5: Colors.white,
              color6: Colors.white,
              color7: Colors.white,
              color8: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left:30.0,bottom: 35),
              child: MyStyleText(
                text: "Loan Information",
                height: 50.0,
                fontSize: 34.0,
                width: 380.0,
                color: HexColor("#333333").withOpacity(0.9),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right:245.0),
              child: MyStyleText(
                text: "1 of 6",
                height: 21.0,
                fontSize: 14.0,
                width: 100.0,
                color: Colors.red,
              ),
            ),


            MyStyleText(
              text: "Reason for Loan",
              height: 21.0,
              fontSize: 20.0,
              width: 341.0,
              color: HexColor("#333333").withOpacity(0.8),
            ),
            SizedBox(height: 20,),

            Container(
              height: 60,
              width: 339,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(30.0),
                  color: HexColor("#333333"),
                  border: Border.all()),
              child: Padding(
                padding: EdgeInsets.only(right:8.0,left: 8.0),
                child: DropdownButtonFormField<String>(

                  hint: Text("Choose Reason",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                  ),),
                  value: selected,

                  items: ["three", "two", "one"]
                      .map((label) => DropdownMenuItem(
                    child: Text(label),
                    value: label,
                  ))
                      .toList(),
                  onChanged: (value) {
                  },


                ),
              ),
            ),
            SizedBox(height: 60,),

            Padding(
              padding: EdgeInsets.only(right:245.0),
              child: MyStyleText(
                text: "2 of 6",
                height: 21.0,
                fontSize: 14.0,
                width: 100.0,
                color: Colors.red,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: MyStyleText(
                text: "What is the Loan Name",
                height: 21.0,
                fontSize: 20.0,
                width: 360.0,
                color: HexColor("#333333").withOpacity(0.8),
              ),
            ),

            SizedBox(height: 20,),
            MyText(
              hintText: "Name",
              hintText_color:Colors.white ,
              fillColor: HexColor("#333333"),
            ),

            SizedBox(height: 60,),



            Padding(
              padding: EdgeInsets.only(right:250.0),
              child: MyStyleText(
                text: "3 of 6",
                height: 21.0,
                fontSize: 14.0,
                width: 100.0,
                color: Colors.red,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:15.0),
              child: MyStyleText(
                text: "What is the Loan Amount?",
                height: 21.0,
                fontSize: 20.0,
                width: 360.0,
                color: HexColor("#333333").withOpacity(0.8),
              ),
            ),
            SizedBox(height: 20,),

            MyText(
              hintText: "GHC",
              hintText_color:Colors.white ,
              fillColor: HexColor("#333333"),
            ),



            Padding(
              padding: EdgeInsets.only(right:250.0,top: 60),
              child: MyStyleText(
                text: "4 of 6",
                height: 21.0,
                fontSize: 14.0,
                width: 100.0,
                color: Colors.red,
              ),
            ),

            MyStyleText(
              text: "What is the Loan Tenure?",
              height: 21.0,
              fontSize: 20.0,
              width: 360.0,
              color: HexColor("#333333").withOpacity(0.8),
            ),
            SizedBox(height: 20,),


            Row(
              children: [
                SizedBox(width: 30,),

                Container(
                  width: 134,
                  child: CustomMatButton(
                    color: HexColor("#F2F2F2"),
                    text: "6 months",
                    onPressed: (){},
                    textColor: HexColor("#333333"),
                  ),
                ),
                SizedBox(width: 37,),

                Container(
                  width: 134,
                  child: CustomMatButton(
                    color: HexColor("#F2F2F2"),
                    text: "12 months",
                    onPressed: (){},
                    textColor: HexColor("#333333"),
                  ),
                ),
              ],
            ),



            SizedBox(height: 60,),

            Padding(
              padding: EdgeInsets.only(right:250.0),
              child: MyStyleText(
                text: "5 of 6",
                height: 21.0,
                fontSize: 14.0,
                width: 100.0,
                color: Colors.red,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:25.0),
              child: MyStyleText(
                text: "What is the re-payment duration?",
                height: 21.0,
                fontSize: 20.0,
                width: 360.0,
                color: HexColor("#333333").withOpacity(0.8),
              ),
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                SizedBox(width: 37,),
                Container(
                  width: 134,
                  child: CustomMatButton(
                    color: HexColor("#333333"),
                    text: "Weekly",
                    onPressed: (){},
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(width: 37,),

                Container(
                  width: 134,
                  child: CustomMatButton(
                    color: HexColor("#F2F2F2"),
                    text: "Daily",
                    onPressed: (){},
                    textColor: HexColor("#333333"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60,),

            Padding(
              padding: EdgeInsets.only(right:250.0),
              child: MyStyleText(
                text: "6 of 6",
                height: 21.0,
                fontSize: 14.0,
                width: 100.0,
                color: Colors.red,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:30.0),
              child: MyStyleText(
                text: "How do you want to re-pay the loans?",
                height: 50.0,
                fontSize: 20.0,
                width: 360.0,
                color: HexColor("333333"),

              ),
            ),
            Row(
              children: [
                SizedBox(width: 37,),
                Container(
                  width: 134,
                  child: CustomMatButton(
                    color: HexColor("#F2F2F2"),
                    text: "Bank",
                    onPressed: (){},
                    textColor: HexColor("#333333"),
                  ),
                ),
                SizedBox(width: 37,),

                Container(
                  width: 134,
                  child: CustomMatButton(
                    color: HexColor("#333333"),
                    text: "Wallet",
                    onPressed: (){},
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60,),




            SizedBox(height: 30,),



            Padding(
              padding:  EdgeInsets.only(right:4.0),
              child: Row(
                children: [
                  SizedBox(width: 36,),
                  Container(
                    width: 125,
                    height: 45,
                    child: MyButton(
                      BorderSide_color: Colors.black,
                      text: "Save",
                      style:TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,

                      ),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(width: 45,),
                  CircleAvatar(
                    backgroundColor: HexColor("333333").withOpacity(0.1),
                    child: Text("?",style: TextStyle(color: Colors.black,
                        fontSize: 25,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),),
                  ),
                  SizedBox(width: 80,),
                  NextArrow(),
                ],
              ),
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),

    );
  }
}

