
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/mobile_number.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/security_question.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/personal_screen/personal_screen.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/personal_screen/address_info.dart';
import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/personal_screen/dob.dart';

import 'file:///C:/Users/Balaraba/AndroidStudioProjects/fintech/lib/create_account_screens/pin_successfully_verified_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






void main()=>runApp(Myapp ());

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddressInformation(),
    );
  }

}













