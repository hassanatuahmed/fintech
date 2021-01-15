import 'package:fintech/client_gurantor_pathern.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/my_style_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_button_screen.dart';
import 'guarantor_address.dart';

class GuarantorMobile extends StatefulWidget {
  @override
  _GuarantorMobileState createState() => _GuarantorMobileState();
}

class _GuarantorMobileState extends State<GuarantorMobile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          GurantorPatternView(
            color: Colors.white,
            color1: Colors.white,
            color2: Colors.white,
            color3: Colors.black,
            color4: Colors.black,
          ),
          MyStyleText(
            text: "What’s the \nGuarantor’s Mobile Number?",
            fontSize: 34.0,
            color: HexColor("333333").withOpacity(0.9),
            height: 153.0,
            width: 360.0,
          ),

          Padding(
            padding: EdgeInsets.only(right:30.0),
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#333333"),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 50,
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset("asset/images/gh.png"),
                  hintText: "Number",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),


          SizedBox(height: 100,),
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
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>GuarantorAddress(),
                   fullscreenDialog: true));

                  },
                    child: NextArrow()),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
