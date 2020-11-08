import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'create_account_screen1.dart';
import 'custom_field.dart';

class CreateAccount3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(

            children: [

              Header(
                color:Colors.white,
                color1:Colors.white,
                color2:Colors.white,
                color3:Colors.black,
                icon: Icons.keyboard_backspace,
                text: "Create Account",
                gradient: LinearGradient(colors: [Colors.red,Colors.pink],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),

            ],

          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.75,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SecondHeader(
                      text: "Final questions to make sure your \n account is always secure",
                    ),

                  ],
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0,left: 50.0),
                  child: Container(

                    width: 290,
                    height: 150,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right:160.0),
                              child: Text("7.Security Questions  "),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),



                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0,left: 0.0),
                          child: CustomField(


                            hintText: "(000) 000-00770",
                            prefixIcon: Icon(Icons.flag),
                          ),
                        ),
                        Text("Security Answer "),
                        CustomField(
                          hintText: "null",
                          prefixIcon: null,
                        ),
                      ],
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 1.0,left: 50.0),
                  child: Container(

                    width: 290,
                    height: 217,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right:160.0),
                          child: Text("8. Password"),
                        ),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0,left: 0.0),
                          child: Column(
                            children: [

                              CustomField(
                                hintText: "",
                                prefixIcon: Icon(null),
                              ),
                              SizedBox(height: 30,),
                              Text("Confirm Password"),
                              CustomField(
                                hintText: "",
                                prefixIcon: Icon(null),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: HexColor("333333"),width: 0.1))
                    ),
                  ),
                ),


                Padding(
                    padding: EdgeInsets.only(left: 300.0),
                    child:NextArrow()
                ),


              ],
            ),

          ),
        ],
      ),

    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
    iconSize: 24,
    elevation: 16,
    style: TextStyle(color: Colors.deepPurple),
    underline: Container(
    height: 2,
    color: Colors.redAccent,
    ),
    onChanged: (String newValue) {
    setState(() {
    dropdownValue = newValue;
    });
    },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(children: [

            IconButton(
              icon: Icon(Icons.home),
              color: Colors.redAccent,
            ),

            Text(value),

          ]),
        );
      }).toList(),
    );
  }
}
