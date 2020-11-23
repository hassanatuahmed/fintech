import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/custom_button.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../business_pattern_view.dart';
import '../my_button_screen.dart';
import 'identification_numbers.dart';

class BusinessName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BusinessPatternView(
            color: Colors.white,
            color1: Colors.black,
            color2: Colors.black,
            color3: Colors.black,
            color4: Colors.black,
            color5: Colors.black,
            color6: Colors.black,
            color7: Colors.black,
            color8: Colors.black,


          ),
          Container(
            height: 102,
            width: 339,
            child: Text("What is your\nBusiness Name",style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontFamily: "Poppins",
              color: HexColor("333333").withOpacity(0.9),
              fontWeight: FontWeight.w400,
            ),),
          ),
          SizedBox(height: 90,),
          MyText(
            hintText: "Name",
            hintText_color:Colors.white ,
            fillColor: HexColor("#333333"),
          ),
          SizedBox(height: 20,),

          SizedBox(height: 70,),

          Row(
            children: [
              SizedBox(width: 36,),
              Container(
                width: 125,
                height: 45,
                child: MyButton(

                  BorderSide_color: Colors.black,
                  text: "Sign Out",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IdentificationNumbers(),
                        fullscreenDialog: true)
                    );
                  },
                  child: NextArrow()),
            ],
          ),
          SizedBox(height: 5,),
        ],
      ),
    );
  }
}
class MyText extends StatefulWidget {
  MyText({this.hintText_color,this.hintText,this.fillColor});
  final hintText;
  final hintText_color;
  final fillColor;
  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: widget.fillColor,
      ),
      height: 50,
      width: 340,
      child: Padding(
        padding: EdgeInsets.only(right:20.0,left: 20.0),
        child: TextField(

          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: widget.hintText_color),

            filled: true,

          ),
        ),
      ),
    );
  }
}



