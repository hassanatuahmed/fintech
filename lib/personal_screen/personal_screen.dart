import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/pattern_view.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:fintech/personal_screen/dob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class PersonalScreen extends StatefulWidget {
  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PersonalPatternView(
              color: Colors.white,
              color1: Colors.black,
              color2: Colors.black,
              color3: Colors.black,
            ),
            Container(
              height: 120,
                width: 339,
                child: Text("The following 5 questions have been pre-filled from creating an account. Double check them for accuracy",style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color:HexColor("#333333"),

                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                ),)),
            Container(

              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("  1.     Select Title",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal
                      ),),),
                  SizedBox(height: 10,),
                  Row(

                    children: [
                      SizedBox(width: 37,),
                      Container(
                        child: Center(child: Text("Mr",style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal),)),
                        height: 40,
                        width: 40,
                        decoration:BoxDecoration(
                            border: Border.all(color: Colors.red)),
                      ),
                      SizedBox(width: 30,),
                      Container(
                        child: Center(child: Text("Mrs",style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal),)),
                        height: 40,
                        width: 40,
                        decoration:BoxDecoration(
                            border: Border.all(color: Colors.red)),
                      ),
                      SizedBox(width: 30,),
                      Container(
                        child: Center(child: Text("Ms",style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal),)),
                        height: 40,
                        width: 40,
                        decoration:BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.red)),
                      ),
                    ],
                  ),

                ],
              ),
              decoration:BoxDecoration(
                border: Border.all(color: HexColor("333333"),width: 0.1),

              ),
              width: 341,
              height: 104,

            ),
            SizedBox(height: 35,),
            Container(decoration: BoxDecoration(
              border: Border.all(width: 0.1,color: Colors.black),
            ),
              height: 178,
              width: 339,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right:185.0,top: 15.0,bottom: 15.0),
                    child: Text("2.   Full Legal Name",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:37.0,right: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: HexColor("#F2F2F2"),
                        hintText: "Nasom",
                        prefixIcon: Icon(Icons.person),
                    ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:37.0,right: 25.0),
                    child: TextField(
                      decoration: InputDecoration(

                        fillColor: HexColor("#F2F2F2"),
                        hintText: "Ikoko",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Container(decoration: BoxDecoration(
              border: Border.all(width: 0.1,color: Colors.black),
            ),
              height: 117,
              width: 339,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right:185.0,top: 15.0,bottom: 10.0),
                    child: Text("3.  Mobile Number",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:37.0,right: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: HexColor("#F2F2F2"),
                        hintText: "(000) 000-000",
                        prefixIcon: Icon(Icons.flag,color: Colors.red,),
                      ),
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(height: 35,),

            Container(decoration: BoxDecoration(
              border: Border.all(width: 0.1,color: Colors.black),
            ),
              height: 117,
              width: 339,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right:185.0,top: 15.0),
                    child: Text("4. Email Address",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:37.0,right: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: HexColor("#F2F2F2"),
                        hintText: "nasom@plendify.com",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 35,),


            Container(decoration: BoxDecoration(
              border: Border.all(width: 0.1,color: Colors.black),
            ),
              height: 117,
              width: 339,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right:185.0,top: 15.0),
                    child: Text("5. Digital Address",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:37.0,right: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: HexColor("#F2F2F2"),
                        hintText: "GA-123-456",
                        prefixIcon: Icon(Icons.location_on),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 80,),

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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalDob(),
                    fullscreenDialog: true)
                    );
                  },
                    child: NextArrow()),
              ],
            ),
            SizedBox(height: 30,),


          ],
        ),
      )
    );
  }
}



