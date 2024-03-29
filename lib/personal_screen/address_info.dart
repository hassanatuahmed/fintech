import '../my_button_screen.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../create_account_screens/full_name_screen2.dart';
import 'next_business.dart';

class AddressInformation extends StatelessWidget {
  get selected => null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PersonalPatternView(
              color: Colors.white,
              color1: Colors.white,
              color2: Colors.white,
              color3: Colors.white,
            ),

            Padding(
              padding: EdgeInsets.only(bottom:35.0,left: 20.0),
              child: Text("Address Information",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 34,
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 290.0),
              child: Text("1 of 4",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),


         Padding(
           padding: EdgeInsets.only(bottom:27.0,right: 85),
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
              padding: EdgeInsets.only(right: 290.0),
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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  color: HexColor("#333333"),
                  onPressed: (){},
                  child: Row(
                    children: [
                      SizedBox(width: 15,),

                      GestureDetector(
                        onTap: (){

                        },
                        child: Text("DD/MM/YY",style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Poppins",
                            color: Colors.white),),
                      ),
                      SizedBox(width: 160,),
                      GestureDetector(
                        onTap: ()=>_selectDate(context),
                          child: Icon(Icons.calendar_today,color: Colors.white,)),
                      SizedBox(width: 15,),

                    ],
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: EdgeInsets.only(right: 290.0),
              child: Text("3 of 4",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 45.0),
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

                  borderRadius: BorderRadius.circular(30.0),
                  color: HexColor("#333333"),
                  border: Border.all()),
                child: Padding(
                  padding: EdgeInsets.only(right:8.0,left: 8.0),
                  child: DropdownButtonFormField<String>(

                    hint: Text("Select Status",style: TextStyle(
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
              padding: EdgeInsets.only(right: 290.0),
              child: Text("4 of 4",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.red,
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 57.0),
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
                SizedBox(width: 50,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NextBusiness(),
                          fullscreenDialog: true)
                      );
                    },
                    child: NextArrow()),
              ],
            ),
            SizedBox(height: 60,),

          ],
        ),
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