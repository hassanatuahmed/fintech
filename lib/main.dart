import 'package:fintech/pattern_view.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fintech/pattern_view.dart';
import 'package:hexcolor/hexcolor.dart';




void main()=>runApp(Myapp ());

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var constant;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              PatternView(
                //backgroundColor: Colors.blue,
                gradient: LinearGradient(
                  colors: [Colors.red,Colors.pink],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),

                image: "asset/images/pay_online.png",
                text: "Hi,Welcome Back,Nasom",
                pattern: Pattern.Personal,
              ),





              Container(
                color: Colors.white,
                child: Padding(

                  padding: const EdgeInsets.only(top:0.0,right: 30.0,left: 30.0),
                  child: Column(
                    children: [

                      Container(
                        alignment: Alignment.centerLeft,
                        color: Colors.white,
                        child: Text("Sign In",style: TextStyle(
                          fontSize: 20,
                          color: HexColor("#333333"),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                        ),),
                      ),
                      SizedBox(height: 15,),

                      CustomField(
                        hintText: 'email',
                        icon:Icon(
                          Icons.email,
                          color: Colors.black,
                        ),

                      ),
                      SizedBox(height: 10,),

                      CustomField(
                        hintText: '************',

                        icon:Icon(
                          Icons.lock_outline,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("forget password?",style: TextStyle(color: Colors.red),),
                      ),
                      SizedBox(height: 10,),
                      CustomButton(



                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),

                        text: "Sign In",
                        color: Colors.white,
                        onPressed: (){},

                      ),

                      SizedBox(height: 9,),

                      CustomButton(

                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: "Poppins",
                          fontSize: 16,
                        ),
                        text: ("Sign in with FingerPrint"),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),

                        onPressed: (){},
                      ),
                      SizedBox(height: 10),
                      Text("Create Account",style: TextStyle(
                        fontStyle: FontStyle.normal,

                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontSize: 16,
                      ),),
                      SizedBox(height: 0,),
                    ],
                  ),
                ),
              ),






            ],
          ),
        ),
      ),
    );
  }
}



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

class CustomButton extends StatelessWidget {
  CustomButton({this.text,this.color,this.onPressed,this.borderSide,this.shape,this.style,this.side});
  final text;
  final color;
  final onPressed;
  final borderSide;
  final shape;
  final style;
  final side;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      width: 342,
      child: OutlineButton(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          //side: BorderSide(color: color),
        ),
        onPressed: onPressed,

        child: Text(text,style: style,),

      ),





    );
  }
}







