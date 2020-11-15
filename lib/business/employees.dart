import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/second_pattern_view.dart';
import 'package:flutter/material.dart';
class Employees extends StatefulWidget {
  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BusinessPatternView(
              color: Colors.white,
              color1: Colors.white,
              color2: Colors.white,
              color3: Colors.black,
              color4: Colors.black,
              color5: Colors.black,
              color6: Colors.black,
              color7: Colors.black,
              color8: Colors.black,
          ),
        ],
      ),
    );
  }
}
