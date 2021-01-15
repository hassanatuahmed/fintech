import 'package:fintech/business/bankSelection.dart';
import 'package:fintech/business/last_client_guarantor.dart';
import 'package:fintech/business/selection.dart';
import 'package:fintech/business_pattern_view.dart';
import 'package:fintech/create_account_screens/full_name_screen2.dart';
import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/custom_button.dart';
import 'package:fintech/personal_pattern_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../my_button_screen.dart';
import '../my_style_text.dart';
import 'name.dart';
class LoanInformation extends StatefulWidget {
  @override
  _LoanInformationState createState() => _LoanInformationState();
}

class _LoanInformationState extends State<LoanInformation> {
  get selected => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          BusinessPatternView(
            color: Colors.white,
            color1: Colors.white,
            color2: Colors.white,
            color3: Colors.white,
            color4: Colors.white,
            color5: Colors.white,
            color6: Colors.white,
            color7: Colors.white,
            color8: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(left:30.0,bottom: 35),
            child: MyStyleText(
              text: "Loan Information",
              height: 50.0,
              fontSize: 34.0,
              width: 380.0,
              color: HexColor("#333333").withOpacity(0.9),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "1 of 6",
              height: 21.0,
              fontSize: 14.0,
              width: 100.0,
              color: Colors.red,
            ),
          ),


          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "Reason for Loan",
              height: 21.0,
              fontSize: 20.0,
              width: 341.0,
              color: HexColor("#333333").withOpacity(0.8),
            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.only(left:30.0,right: 30.0),
            child: Container(
              height: 50,
              width: 339,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(30.0),
                  color: HexColor("#333333"),
                  border: Border.all()),
              child: Padding(
                padding: EdgeInsets.only(right:8.0,left: 8.0),
                child: DropdownButtonFormField<String>(

                  hint: Text("Choose Reason",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                  ),),
                  value: selected,

                  items: ["three", "two", "one"]
                      .map((label) => DropdownMenuItem(
                    child: Text(label),
                    value: label,
                  ))
                      .toList(),
                  onChanged: (value) {
                  },


                ),
              ),
            ),
          ),
          SizedBox(height: 60,),

          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "2 of 6",
              height: 21.0,
              fontSize: 14.0,
              width: 100.0,
              color: Colors.red,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "What is the Loan Name",
              height: 21.0,
              fontSize: 20.0,
              width: 360.0,
              color: HexColor("#333333").withOpacity(0.8),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left:30.0,right: 30.0),
            child: MyText(
              hintText: "Name",
              hintText_color:Colors.white ,
              fillColor: HexColor("#333333"),
            ),
          ),

          SizedBox(height: 60,),



          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "3 of 6",
              height: 21.0,
              fontSize: 14.0,
              width: 100.0,
              color: Colors.red,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "What is the Loan Amount?",
              height: 21.0,
              fontSize: 20.0,
              width: 360.0,
              color: HexColor("#333333").withOpacity(0.8),
            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.only(left:30.0,right: 30.0),
            child: MyText(
              hintText: "GHC",
              hintText_color:Colors.white ,
              fillColor: HexColor("#333333"),
            ),
          ),



          Padding(
            padding: EdgeInsets.only(left:30.0,top: 60),
            child: MyStyleText(
              text: "4 of 6",
              height: 21.0,
              fontSize: 14.0,
              width: 100.0,
              color: Colors.red,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "What is the Loan Tenure?",
              height: 21.0,
              fontSize: 20.0,
              width: 360.0,
              color: HexColor("#333333").withOpacity(0.8),
            ),
          ),
          SizedBox(height: 20,),


          Container(
            height: 70,
            child: WeekSelection(),
          ),



          SizedBox(height: 60,),

          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "5 of 6",
              height: 21.0,
              fontSize: 14.0,
              width: 100.0,
              color: Colors.red,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left:25.0),
            child: MyStyleText(
              text: "What is the re-payment duration?",
              height: 21.0,
              fontSize: 20.0,
              width: 360.0,
              color: HexColor("#333333").withOpacity(0.8),
            ),
          ),
          SizedBox(height: 20,),

         Container(
           height: 70,
           child: WeekSelection(),
         ),
          SizedBox(height: 60,),

          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "6 of 6",
              height: 21.0,
              fontSize: 14.0,
              width: 100.0,
              color: Colors.red,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left:30.0),
            child: MyStyleText(
              text: "How do you want to re-pay the loans?",
              height: 50.0,
              fontSize: 20.0,
              width: 360.0,
              color: HexColor("333333"),

            ),
          ),
          Container(
            height: 70,
            child: BankSelection(),
          ),
          SizedBox(height: 60,),




          SizedBox(height: 30,),



          Padding(
            padding:  EdgeInsets.only(right:4.0),
            child: Row(
              children: [
                SizedBox(width: 36,),
                Container(
                  width: 125,
                  height: 45,
                  child: MyButton(

                    BorderSide_color: Colors.black,
                    text: "Save",
                    style:TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,

                    ),
                    onPressed: (){},
                  ),
                ),





                SizedBox(width: 45,),
                CircleAvatar(
                  backgroundColor: HexColor("333333").withOpacity(0.1),
                  child: Text("?",style: TextStyle(color: Colors.black,
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),),
                ),
                SizedBox(width: 80,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientGuarantor(),
                          fullscreenDialog: true));

                    },
                    child: NextArrow()),
              ],
            ),
          ),
          SizedBox(height: 60,),
        ],
      ),

    );
  }
}


class WeekSelection extends StatefulWidget {



  @override
  _WeekSelectionState createState() => _WeekSelectionState();
}

class _WeekSelectionState extends State<WeekSelection> {
  List<RadioModel> sampleData = new List<RadioModel>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, 'Weekly'));
    sampleData.add(new RadioModel(false, 'Daily'));

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,



      body: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return new InkWell(
            //highlightColor: Colors.red,
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

class RadioModel {
  bool isSelected;
  final String buttonText;


  RadioModel(this.isSelected, this.buttonText);
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:20.0),
      child: new Container(
        margin: new EdgeInsets.all(15.0),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Container(
              height: 50.0,
              width: 117.0,
              child: new Center(
                child: new Text(_item.buttonText,
                    style: new TextStyle(
                        color:
                        _item.isSelected ? Colors.white : Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
              ),
              decoration: new BoxDecoration(
                color: _item.isSelected
                    ? Colors.black
                    : Colors.transparent,
                border: new Border.all(
                    width: 1.0,
                    color: _item.isSelected
                        ? Colors.black
                        : Colors.grey),
                borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(left: 10.0),

            )
          ],
        ),
      ),
    );
  }
}





















































