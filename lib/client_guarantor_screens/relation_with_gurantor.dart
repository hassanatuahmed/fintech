import 'package:fintech/client_gurantor_pathern.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/my_style_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_button_screen.dart';

class RelationWithGuarantor extends StatefulWidget {
  @override
  _RelationWithGuarantorState createState() => _RelationWithGuarantorState();
}

class _RelationWithGuarantorState extends State<RelationWithGuarantor> {
  get selected => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          GurantorPatternView(
            color: Colors.white,
            color1: Colors.white,
            color2: Colors.black,
            color3: Colors.black,
            color4: Colors.black,
          ),
          MyStyleText(
            text: "What’s your relationship with the Guarantor",
            fontSize: 34.0,
            color: HexColor("333333").withOpacity(0.9),
            height: 153.0,
            width: 360.0,
          ),
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

                hint: Text("Relationship Type",style: TextStyle(
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
                    //onTap: (){
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>RelationWithGuarantor(),
                         // fullscreenDialog: true));

                   // },
                    child: NextArrow()),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
