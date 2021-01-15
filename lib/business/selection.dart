import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySelection extends StatefulWidget {



  @override
  _MySelectionState createState() => _MySelectionState();
}

class _MySelectionState extends State<MySelection> {
  List<RadioModel> sampleData = new List<RadioModel>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, '6 months'));
    sampleData.add(new RadioModel(false, '12 months'));

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
