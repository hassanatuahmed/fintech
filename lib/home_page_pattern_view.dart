import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePagePatternView extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 425,
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

              SizedBox(width: 25,),
              Container(
                height: 30,
                width: 230,
                child: Text("Good Morning, Nasom",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal, color: Colors.white,
                ),
                  textAlign: TextAlign.center,),
              ),
              SizedBox(width: 70,),

              Image.asset('asset/images/lady.png',scale: 4,),
            ],
          ),

          Image.asset("asset/images/account.png",color: Colors.white,),
        ],
      ),

    );
  }
}