import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatternView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 425,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.red.withOpacity(0.5),Colors.red.withOpacity(0.5)],),
      ),
      child: Column(
        children: [
          SizedBox(height: 100,),


          Image.asset("asset/images/account.png",color: Colors.white,),
        ],
      ),

    );
  }
}