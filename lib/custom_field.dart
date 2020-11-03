import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomField extends StatefulWidget {
  const CustomField({ this.fieldKey,
    //this.minLength,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.prefixIcon,
  });

  final Key fieldKey;
  //final int minLength;
  final String hintText;
  final String labelText;
  final String helperText;
  final Icon icon;
  final Widget prefixIcon;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;
  @override
  _CustomFieldState createState() => new _CustomFieldState();

// TODO: implement createState



}
class _CustomFieldState extends State<CustomField> {
  bool _obscureText = true;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 50,
      //padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: HexColor("#F2F2F2"),


      ),
      child: Container(
        height: 50,
        child: TextFormField(



          key: widget.fieldKey,
          obscureText: _obscureText,
          onSaved: widget.onSaved,
          validator: widget.validator,
          onFieldSubmitted: widget.onFieldSubmitted,
          decoration: InputDecoration(
            border: InputBorder.none,

            filled: true,
            hintText: widget.hintText,

            labelText: widget.labelText,
            helperText: widget.helperText,


          ),

        ),
      ),
    );
  }
}
