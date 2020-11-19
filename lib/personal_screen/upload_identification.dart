import 'address_info.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/personal_screen/personal_screen.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



class UploadIdentification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          PersonalPatternView(
            color: Colors.white,
            color1: Colors.white,
            color2: Colors.white,
            color3: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(right:40.0),
            child: Container(
              height: 102,
                width: 339,
                child: Text("Upload \nIdentifications",style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 34,
                ),)),
          ),
          Row(
            children: [
              SizedBox(width: 15,),
              Container(
                height:200,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: HexColor("#333333"),width: 1),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:30.0,bottom: 27.0),
                      child: Image.asset("asset/images/passport.png"),
                    ),
                    Container(
                      height: 48,
                        width: 160,
                        child: Text("Passport bio-data page",style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),textAlign: TextAlign.center,)),
                  ],
                ),
              ),
              SizedBox(width: 15,),

              Container(
                height:200,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: HexColor("#333333"),width: 1),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:30.0,bottom: 40),
                      child: Image.asset("asset/images/id.png",scale: 4,),
                    ),
                    Container(
                      width: 160,
                        height: 48,
                        child: Container(
                          height: 48,
                            width: 152,
                            child: Text("Voter ID/Driving License",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                            ),textAlign: TextAlign.center,))),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressInformation(),
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
