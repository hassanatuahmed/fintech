import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../client_gurantor_pathern.dart';
import '../my_button_screen.dart';
import '../my_style_text.dart';
import 'all_done.dart';
class GuarantorUploads extends StatefulWidget {
  @override
  _GuarantorUploadsState createState() => _GuarantorUploadsState();
}

class _GuarantorUploadsState extends State<GuarantorUploads> {
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
            color3: Colors.white,
            color4: Colors.white,
          ),
          MyStyleText(
            text: "Upload Guarantor’s Primary ID",
            fontSize: 34.0,
            color: HexColor("333333").withOpacity(0.9),
            height: 100.0,
            width: 360.0,
          ),

          Padding(
            padding: EdgeInsets.only(right:150.0),
            child: Container(
              height:200,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: HexColor("#333333"),width: 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:28.0,bottom: 24.0),
                    child: Image.asset("asset/images/passport.png"),
                  ),
                  Container(
                      height: 54,
                      width: 160,
                      child: Text("Passport, National ID, Driver License/ Voter ID",style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),textAlign: TextAlign.center,)),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>AllDone(),
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
