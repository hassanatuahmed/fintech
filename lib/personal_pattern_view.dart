import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'my_button_screen.dart';

class PersonalPatternView extends StatelessWidget {
  PersonalPatternView({this.color,this.color3,this.color2,this.color1});

  final color;
  final color1;
  final color2;
  final color3;
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 425,
      //height: 261.3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.red,HexColor("9C3D98")],),
      ),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 30,),

              Container(
                  height: 16,
                  width: 16,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                      child: Icon(Icons.keyboard_backspace,color: Colors.white,))),
              SizedBox(width: 50,),
              Text("Personal",style: TextStyle(fontSize: 34,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal, color: Colors.white,
              ),
                textAlign: TextAlign.center,),
              SizedBox(width: 20,),

              Container(
                width: 95,
                height: 40,
                child: MyButton(


                  BorderSide_color: Colors.white,
                  text: "Sign Out",
                  style:TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,

                  ),
                  onPressed: (){},
                ),
              ),
            ],
          ),
          SizedBox(height: 22,),
          Row(
            children: [
              SizedBox(width: 80,),

              Container(
                height: 3,
                width:40,
                color: color,
              ),
              SizedBox(width: 10,),
              Container(
                height: 3,
                width:40,
                color: color1,
              ),
              SizedBox(width: 10,),
              Container(
                height: 3,
                width:40,
                color: color2,
              ),
              SizedBox(width: 10,),
              Container(
                height: 3,
                width:40,
                color: color3,
              ),
            ],
          ),
          Image.asset("asset/images/account.png",color: Colors.white,),
        ],
      ),

    );
  }
}