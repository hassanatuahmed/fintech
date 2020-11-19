import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/full_name_screen2.dart';
import 'package:fintech/custom_button.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/personal_screen/personal_screen.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:fintech/personal_screen/upload_identification.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PersonalDob extends StatefulWidget {
  @override
  _PersonalDobState createState() => _PersonalDobState();
}

class _PersonalDobState extends State<PersonalDob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          PersonalPatternView(
            color: Colors.white,
            color1: Colors.white,
            color2: Colors.black,
            color3: Colors.black,
          ),
          Container(
            height: 102,
            width: 339,
            child: Text("What is your Date of Birth",style: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",

            ),),
          ),
          Container(
            width: 233,
            height: 227,
          ),
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
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadIdentification(),
                     fullscreenDialog: true)
                 );
               },
                 child: NextArrow()),
           ],
          ),
        ],
      ),

    );
  }
}
