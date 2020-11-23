

import 'package:fintech/create_account_screens/sign_in_screen1.dart';
import 'package:fintech/my_button_screen.dart';
import 'package:fintech/my_slider.dart';
import 'package:fintech/personal_screen/next_business.dart';

import 'business/employees.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'business/last_client_guarantor.dart';
import 'client_guarantor_screens/guarantor’s_name.dart';
import 'client_gurantor_pathern.dart';
import 'create_account_screens/pin_successfully_verified.dart';







void main()=>runApp(Myapp ());

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:GurantorName(),
    );
  }

}













