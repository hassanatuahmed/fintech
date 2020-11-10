import 'package:fintech/pattern_view.dart';
import 'package:fintech/pin_successfully_verified_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class PersonalScreen extends StatefulWidget {
  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 425,
              height: 261,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  colors: [Colors.red,HexColor("9C3D98")]
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.keyboard_backspace),
                      Text("Personal"),
                      MyButton(
                        text: "Sign Out",
                        style:TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,

                        ),
                        onPressed: (){},
                      ),
                    ],
                  ),
                  Row(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
