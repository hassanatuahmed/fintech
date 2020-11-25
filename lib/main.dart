



import 'package:fintech/create_account_screens/sign_in_screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'client_guarantor_screens/guarantor_address.dart';
import 'client_guarantor_screens/guarantor_mobile_number.dart';
import 'client_guarantor_screens/guarantor’s_name.dart';
import 'client_guarantor_screens/upload_guarantor_id.dart';






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













