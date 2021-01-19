import 'package:fintech/create_account_screens/full_name_screen2.dart';

import '../my_button_screen.dart';
import 'package:fintech/custom_button.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:fintech/personal_screen/upload_identification.dart';
import 'package:flutter/cupertino.dart';
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
            width: 240,
            height: 227,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime(1900,1,1),
              onDateTimeChanged: (DateTime newDateTime){},

            ),

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
             SizedBox(width: 50,),
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

DateTime currentDate = DateTime.now();
Future<void> _selectDate(BuildContext context) async {
  final DateTime pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2015),
      lastDate: DateTime(2050));
  if (pickedDate != null && pickedDate != currentDate)
    setState(() {
      currentDate = pickedDate;
    });}

void setState(Null Function() currentDate) {
}
