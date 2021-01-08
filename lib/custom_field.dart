import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomField extends StatefulWidget {
  CustomField({this.hintText,this.prefixIcon,this.obscureText=false,this.keyboardType});
  final String hintText;
  final prefixIcon;
  final bool obscureText;
  final keyboardType;
  @override
  _CustomFieldState createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:widget.keyboardType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: HexColor("#F2F2F2"),
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
      ),

    );
  }
}
