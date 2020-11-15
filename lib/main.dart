
import 'package:fintech/personal_screen/dob.dart';
import 'package:fintech/personal_screen/next_business.dart';
import 'package:fintech/personal_screen/personal_screen.dart';

import 'business/employees.dart';
import 'business/identification_numbers.dart';
import 'business/name.dart';
import 'create_account_screens/pin_successfully_verified.dart';
import 'create_account_screens/security_question.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/personal_screen/address_info.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






void main()=>runApp(Myapp ());

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Employees(),
    );
  }

}













