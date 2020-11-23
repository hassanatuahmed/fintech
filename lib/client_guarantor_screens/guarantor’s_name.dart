import 'package:fintech/business/name.dart';
import 'package:fintech/client_gurantor_pathern.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/custom_button.dart';
import 'package:fintech/my_style_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_button_screen.dart';
class GurantorName extends StatefulWidget {
  @override
  _GurantorNameState createState() => _GurantorNameState();
}

class _GurantorNameState extends State<GurantorName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GurantorPatternView(
              color: Colors.white,
              color1: HexColor("#333333"),
              color2: HexColor("#333333"),
              color3: HexColor("#333333"),
              color4:HexColor("#333333"),
            ),
            Padding(
              padding: EdgeInsets.only(left:30.0,bottom: 35.0),
              child: MyStyleText(
                text: "Guarantor’s Name",
                height: 51.0,
                width: 380.0,
                color: Colors.black,
                fontSize: 34.0,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:33.0),
              child: MyStyleText(
                text: "1 of 3",
                height: 21.0,
                width: 380.0,
                color: Colors.red,
                fontSize: 14.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:30.0),
              child: MyStyleText(
                text: "What is the Guarantor’s Title",
                height: 30.0,
                width: 380.0,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 37,),
                Container(
                  height: 41,
                  width: 85,
                  child: CustomMatButton(
                    text: "Mr",
                    onPressed: (){},
                    color: HexColor("#F2F2F2"),
                    textColor: Colors.black,
                  ),
                ),
                SizedBox(width: 21,),

                Container(
                  height: 41,
                  width: 85,
                  child: CustomMatButton(
                    text: "Mrs",
                    onPressed: (){},
                    color: HexColor("#F2F2F2"),
                    textColor: Colors.black,
                  ),
                ),
                SizedBox(width: 21,),

                Container(
                  height: 41,
                  width: 85,
                  child: CustomMatButton(
                    text: "Ms",
                    onPressed: (){},
                    color: HexColor("#F2F2F2"),
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),



            Padding(
              padding: EdgeInsets.only(left:33.0),
              child: MyStyleText(
                text: "2 of 3",
                height: 21.0,
                width: 380.0,
                color: Colors.red,
                fontSize: 14.0,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:30.0),
              child: MyStyleText(
                text: "Guarantor’s First Name",
                height: 30.0,
                width: 380.0,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),

            MyText(
              hintText: "Name",
              hintText_color: Colors.white,
              fillColor: HexColor("#333333"),
            ),

            Padding(
              padding: EdgeInsets.only(left:33.0),
              child: MyStyleText(
                text: "3 of 3",
                height: 21.0,
                width: 380.0,
                color: Colors.red,
                fontSize: 14.0,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:30.0),
              child: MyStyleText(
                text: "Guarantor’s Last Name",
                height: 30.0,
                width: 380.0,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            MyText(
              hintText: "Last Name",
              hintText_color: Colors.white,
              fillColor: HexColor("#333333"),
            ),

            SizedBox(height: 120,),


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
                  GestureDetector(
                      //onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>(),
                           // fullscreenDialog: true));

                      //},
                      child: NextArrow()),
                ],
              ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
