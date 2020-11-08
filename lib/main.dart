import 'package:fintech/create_account_screen1.dart';
import 'package:fintech/create_account_screen3.dart';
import 'package:fintech/custom_field.dart';
import 'package:fintech/pattern_view.dart';
import 'package:fintech/pin_verification_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'create_account_4.dart';
import 'create_account_screen2.dart';
import 'custom_button.dart';
import 'home_screen.dart';





void main()=>runApp(Myapp ());

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateAccount3(),
    );
  }

}













