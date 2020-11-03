import 'package:fintech/custom_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({this.color,this.text});
  final text;
  final color;

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(

            children: [

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red,Colors.pink],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height * 0.25,
                child: Center(
                    child: Row(
                      children: [
                        Icon(Icons.keyboard_backspace),
                        Text('Create Account'),
                      ],
                    )),
              ),
              Positioned(
                top: 140,

                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),

            ],

          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            color: Colors.white,
            child: Column(
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [

                    CircleAvatar(

                      child: Text("CBG",
                      style: TextStyle(fontSize: 16,
                          color: HexColor("#000000"),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal),),
                    ),
                    Container(
                      width: 290,
                      height: 75,
                      color: HexColor("ED1C24"),
                      child: Text("To create an account, you need\n to answer some questions",
                        style:TextStyle(fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal) ,),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 70.0),
                  child: Container(
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor("333333")),
                    ),

                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 70.0),
                  child: Container(
                    width: 300,
                    height: 150,
                    child: Column(
                      children: [
                        Text("2. Full Legal Name"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomField(

                            hintText: 'First Name',
                            icon:Icon(
                              Icons.email,
                              color: Colors.black,
                            ),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomField(
                            hintText: 'Last Name',
                            icon:Icon(
                              Icons.email,
                              color: Colors.black,
                            ),

                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor("333333")),
                    ),
                  ),
                ),
                SizedBox(height: 30,),

                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(

                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ),


              ],
            ),

          ),

        ],
      ),
    );
  }
}
