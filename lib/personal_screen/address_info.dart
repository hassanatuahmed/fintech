import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/personal_screen/personal_screen.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/pin_successfully_verified_screen.dart';
import 'package:fintech/second_pattern_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../create_account_screens/full_name.dart';

class AddressInformation extends StatelessWidget {
  get selected => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SecondPatternView(
              color: Colors.white,
              color1: Colors.white,
              color2: Colors.white,
              color3: Colors.white,
            ),

            Padding(
              padding: EdgeInsets.only(bottom:35.0,right: 30.0),
              child: Text("Address Information",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 34,
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 300.0),
              child: Text("1 of 4",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),


         Padding(
           padding: EdgeInsets.only(bottom:27.0,right: 140),
           child: Text("Upload Proof of Address",style: TextStyle(
             fontSize: 20,
           ),),
         ),
          Padding(
            padding: EdgeInsets.only(bottom:60.0,right: 150),
            child: Container(
              height: 200,
              width: 186,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [

                  Padding(
                    padding: EdgeInsets.only(top:27.0,bottom:20.0),
                    child: Image.asset("asset/images/bills.png",scale: 4,),
                  ),
                  Container(
                    height: 48,
                    width: 84,
                    child: Text("Electricity/Water Bill",style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,),
                  ),

                ],
              ),
            ),
          ),
            Padding(
              padding: EdgeInsets.only(right: 310.0),
              child: Text("2 of 4",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:20.0,left: 15),
              child: Container(
                width: 360,
                  height: 60,
                  child: Text("When did you start living at this address?",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                  ),)),
            ),

          Padding(
            padding: EdgeInsets.only(bottom:60.0,top:20.0),
            child: Container(
              height: 60,
              width: 339,
              child: Container(
                height: 60,
                width: 339,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  color: HexColor("#333333"),
                  onPressed: (){},
                  child: Text("DD/MM/YY"),
                ),
              ),
            ),
          ),
            Padding(
              padding: EdgeInsets.only(right: 310.0),
              child: Text("3 of 4",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 83.0),
              child: Text("What is the ownership status",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 20,
              ),),
            ),
            SizedBox(height: 20,),


            Container(
              height: 60,
                width: 339,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: HexColor("#333333"),
                  border: Border.all()),
                child: DropdownButtonFormField<String>(

                  hint: Text("Select Status"),
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

            SizedBox(height: 60,),
            Padding(
              padding: EdgeInsets.only(right: 310.0),
              child: Text("4 of 4",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 97.0),
              child: Text("Upload Tenancy Agreement",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 20,
              ),),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: EdgeInsets.only(right: 150.0),
              child: Container(
                height: 200,
                width: 186,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(30),),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Image.asset("asset/images/contract.png"),
                    SizedBox(height: 20,),

                    Container(
                      height: 48,
                      width: 143,
                      child: Text("Electricity/Water Bill",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,),),

                  ],
                ),
              ),
            ),
            SizedBox(height: 100,),
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
                NextArrow(),
              ],
            ),
    ],
        ),
      ),
    );
  }
}
