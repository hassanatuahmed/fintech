import 'package:fintech/custom_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'mobile_number_three.dart';

class FullName extends StatefulWidget {
  FullName({this.color,this.text});
  final text;
  final color;

  @override
  _FullNameState createState() => _FullNameState();
}

class _FullNameState extends State<FullName> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(

            children: [

             Header(
               color:Colors.white,
               color1:Colors.black,
               color2:Colors.black,
               color3:Colors.black,
               icon: Icons.keyboard_backspace,
               text: "Create Account",
               gradient: LinearGradient(colors: [Colors.red,Colors.pink],
                 begin: Alignment.topRight,
                 end: Alignment.bottomLeft,
               ),
             ),

            ],

          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.75,
            color: Colors.white,
            child: Column(
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [
                    SecondHeader(
                      text: "To create an account, you need \n to answer some questions",
                    ),

                  ],
                ),
                SizedBox(height: 24,),
                Padding(
                  padding: EdgeInsets.only(left: 70.0),
                  child: Container(

                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Align(
                          alignment: Alignment.topLeft,
                            child: Text("  1.  Select Title")),
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
                          ],
                        ),

                      ],
                    ),
                    decoration:BoxDecoration(
                      border: Border.all(color: HexColor("333333"),width: 0.1),

                    ),
                    width: 290,
                    height: 104,

                    ),

                  ),

                SizedBox(height: 17,),
                Padding(
                  padding: EdgeInsets.only(left: 70.0),
                  child: Container(
                    width: 290,
                    height: 169,
                    child: Column(
                      children: [
                        SizedBox(height: 17,),
                        Align(
                          alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left:18.0),
                              child: Text("2. Full Legal Name"),
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 17,left: 37.0,bottom: 8.0,top: 8.0),
                          child: CustomField(
                            hintText: "First Name",

                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 17,left: 37.0,bottom: 8.0,top: 8.0),
                          child: CustomField(
                            hintText: "Last Name",

                            ),

                          ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor("333333"),width: 0.1),
                    ),
                  ),
                ),
                SizedBox(height: 60,),

                Padding(
                  padding: EdgeInsets.only(left: 300.0),

                  child:GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>MobileNumber(),
                        fullscreenDialog: true,
                      ));
                    },
                    child: NextArrow(

                    ),
                  )
                ),
                SizedBox(height: 20),


              ],
            ),

          ),

        ],
      ),
    );
  }
}




class NextArrow extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        backgroundColor: Colors.red,
        child: Icon(
          Icons.arrow_forward,
        ),
      ),
    );
  }
}


class SecondHeader extends StatelessWidget {
  SecondHeader({this.text});
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: HexColor("F2F2F2"),
            child: Text("CBG",
              style: TextStyle(fontSize: 16,
                  color: HexColor("#000000").withOpacity(0.1),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal),),
          ),
          SizedBox(width: 10,),
          Container(
            width: 290,
            height: 75,
            color: HexColor("ED1C24").withOpacity(0.1),
            child: Center(
              child: Text(text,
                style:TextStyle(fontSize: 16,
                    fontFamily: "Poppins",
                    color: HexColor("#333333").withOpacity(0.9),
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal) ,),
            ),
          ),

        ],
      ),
    );
  }
}


class Header extends StatelessWidget {
  Header({this.color,this.gradient,this.icon,this.text,this.borderRadius,
  this.color1,this.color2,this.color3});
  final color;
  final color1;
  final color2;
  final color3;
  final gradient;
  final icon;
  final text;
  final borderRadius;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(

          children: [

            Container(
              decoration: BoxDecoration(
                gradient: gradient,
              ),
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height * 0.25,
              child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60.0),
                        child: Row(

                          children: [
                            SizedBox(width: 34,),

                            Icon(icon,color: Colors.white,),
                            SizedBox(width: 40,),

                            Text(text,style: TextStyle(
                              fontSize: 34,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poly",
                              color: Colors.white,
                            ),),

                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          child: Row(
                            children: [
                              SizedBox(width: 130,),

                                 Container(
                                  color: color,
                                  height: 3,
                                  width: 40,
                                ),

                              SizedBox(width: 10,),

                              Center(
                                child: Container(
                                  color: color1,
                                  height: 3,
                                  width: 40,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Center(
                                child: Container(
                                  color: color2,
                                  height: 3,
                                  width: 40,
                                ),
                              ),
                              SizedBox(width: 10,),

                              Center(
                                child: Container(
                                  color: color3,
                                  height: 3,
                                  width: 40,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Positioned(
              top: 140,

              child: Container(

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),

          ],

        ),

      ],
    );
  }
}

