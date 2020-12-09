
import 'package:fintech/portal/auto_payment.dart';
import 'package:fintech/portal/loan_page.dart';
import 'package:fintech/portal/payment_method.dart';
import 'package:fintech/portal/start_date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main()=>runApp(Myapp ());

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartDate(),
    );
  }

}













