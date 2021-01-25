
import 'package:fintech/business/loan_information.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/create_account_screens/pin_verification.dart';
import 'package:fintech/create_account_screens/sign_in_screen1.dart';
import 'package:fintech/personal_screen/address_info.dart';
import 'package:fintech/portal/auto_payment.dart';
import 'package:fintech/portal/bottom_navigation_homepage.dart';
import 'package:fintech/portal/loan_page.dart';
import 'package:fintech/portal/loan_payment.dart';
import 'package:fintech/portal/portal_main_screen.dart';
import 'package:fintech/customizeRButton.dart';
import 'package:fintech/portal/test_main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'business/annual_revenue.dart';
import 'business/datepicker.dart';
import 'business/duration.dart';
import 'business/employees.dart';
import 'business/selection.dart';
import 'create_account_screens/checkboxes.dart';
import 'create_account_screens/security_question_screen_four.dart';



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













