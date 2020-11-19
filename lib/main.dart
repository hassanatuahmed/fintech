
import 'package:fintech/personal_screen/dob.dart';
import 'package:fintech/personal_screen/next_business.dart';
import 'package:fintech/personal_screen/personal_screen.dart';
import 'package:fintech/personal_pattern_view.dart';

import 'business/address_information.dart';
import 'business/annual_revenue.dart';
import 'business/business_type.dart';
import 'business/duration.dart';
import 'business/employees.dart';
import 'business/identification_numbers.dart';
import 'business/last_client_guarantor.dart';
import 'business/loan_information.dart';
import 'business/name.dart';
import 'business/upload_document.dart';
import 'create_account_screens/full_name_screen2.dart';
import 'create_account_screens/pin_successfully_verified.dart';
import 'create_account_screens/security_question_screen_four.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/personal_screen/address_info.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'create_account_screens/sign_in_screen1.dart';






void main()=>runApp(Myapp ());

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignIn(),
    );
  }

}













