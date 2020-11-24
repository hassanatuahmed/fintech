import 'package:fintech/client_guarantor_screens/upload_guarantor_id.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../client_gurantor_pathern.dart';
import '../my_button_screen.dart';
import '../my_style_text.dart';
class GuarantorAddress extends StatefulWidget {
  @override
  _GuarantorAddressState createState() => _GuarantorAddressState();
}

class _GuarantorAddressState extends State<GuarantorAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GurantorPatternView(
            color: Colors.white,
            color1: Colors.white,
            color2: Colors.white,
            color3: Colors.white,
            color4: Colors.black,
          ),

          MyStyleText(
            text: "What’s the Guarantor’s Digital Address?",
            fontSize: 34.0,
            color: HexColor("333333").withOpacity(0.9),
            height: 153.0,
            width: 360.0,
          ),

          Container(
            color: Colors.red,
            height: 60,
            child: Row(
              children: [
                Text("hello"),
                Text("hello"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "hellohello",
                  ),
                ),
                Icon(Icons.flag),
              ],
            ),
          ),
          SizedBox(height: 80,),
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>GuarantorUploads(),
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
