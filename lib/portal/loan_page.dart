import 'package:fintech/my_style_text.dart';
import 'package:flutter/material.dart';

import '../home_page_pattern_view.dart';

class LoanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomePagePatternView(),
          MyStyleText(
            text: "Repayment Settings",
            fontSize: 24.0,
            height: 36.0,
            width: 243.0,
          ),


        ],
      ),
    );
  }
}
