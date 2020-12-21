
import 'package:fintech/create_account_screens/sign_in_screen1.dart';
import 'package:fintech/portal/auto_payment.dart';
import 'package:fintech/portal/bottom_navigation_homepage.dart';
import 'package:fintech/portal/dialog_testing.dart';
import 'package:fintech/portal/loan_page.dart';
import 'package:fintech/portal/loan_payment.dart';
import 'package:fintech/portal/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main()=>runApp(Myapp ());

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }

}













