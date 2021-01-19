import 'package:fintech/create_account_screens/pin_verification.dart';
import 'package:fintech/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'full_name_screen2.dart';
import '../custom_field.dart';
class Checkboxes extends StatelessWidget {
  get checkedValue => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(

            children: [
              Header(
                color: Colors.white,
                color1: Colors.white,
                color2: Colors.white,
                color3: Colors.white,
                icon: Icons.keyboard_backspace,
                text: "Create Account",
                gradient: LinearGradient(colors: [Colors.red, Colors.pink],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ],

          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.75,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SecondHeader(
                      text: "Some checkboxes before\n submittion",
                    ),

                  ],
                ),
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0, left: 60.0),
                  child: Container(
                    width: 290,
                    height: 144,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.1, color: HexColor("333333"),),

                    ),
                    child: Container(
                      height: 144,
                        child: CustomCheckbox()),
                  ),
                ),
                Spacer(),

                Padding(
                  padding: EdgeInsets.only(bottom: 50, right: 90, left: 90),
                  child: Container(
                    child: CustomMatButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      fontSize: 16.0,
                      text: "submit",
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => PinVerification(),
                            fullscreenDialog: true)

                        );
                      },

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




class CustomCheckbox extends StatefulWidget {
  @override
  createState() {
    return new CustomCheckboxState();
  }
}

class CustomCheckboxState extends State<CustomCheckbox> {
  List<RadioModel> sampleData = new List<RadioModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, 'I have read the Terms\nand Services'));
    sampleData.add(new RadioModel(false, 'I want to receive\npromotional offers'));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return new InkWell(
            //highlightColor: Colors.red,
            splashColor: Colors.blueAccent,
            onTap: () {
              setState(() {
                sampleData.forEach((element) => element.isSelected = false);
                sampleData[index].isSelected = true;
              });
            },
            child: new RadioItem(sampleData[index]),
          );
        },
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;

  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 25.0,
            width: 25.0,

            decoration: new BoxDecoration(
              color: _item.isSelected
                  ? Colors.red
                  : Colors.transparent,
              border: new Border.all(
                  width: 1.0,
                  color: _item.isSelected
                      ? Colors.red
                      : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(left: 10.0),
            child: new Text(_item.text),
          )
        ],
      ),
    );
  }
}

  class RadioModel {
  bool isSelected;
  final String text;

  RadioModel(this.isSelected, this.text);
  }


