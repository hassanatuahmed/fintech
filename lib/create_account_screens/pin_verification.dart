import 'dart:async';

import 'package:fintech/create_account_screens/pin_successfully_verified.dart';
import 'package:fintech/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class PinVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        //height:MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red,Colors.purple],

            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),


            Image.asset('asset/images/phone.png',scale: 4,),


            SizedBox(height: 20,),
            Center(
              child: Text("PIN Verification",style: TextStyle(
                fontStyle: FontStyle.normal,
                fontFamily: "Poly",
                fontSize: 34,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),),
            ),
            SizedBox(height: 62,),
            Container(
                child: Text(
                    "Please input the 4-digit PIN that \n was sent to your phone number",style: TextStyle(
                  color: Colors.white,
                  fontSize:16,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,

                ),)),
            SizedBox(height: 20,),

            Row(

              children: [
                SizedBox(width: 90,),
                Text("(000) 000-0000",style: TextStyle(
                  color: Colors.white,
                  fontSize:24,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(width: 10,),

                Text("Change",style: TextStyle(
                  color: Colors.white,
                  fontSize:14,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),),

                SizedBox(width: 75,),

              ],
            ),
            SizedBox(height: 60,),


            Row(
              children: [


                Container(
                  color: Colors.white,
                  height: 3,
                  width: 40,
                ),
                SizedBox(width: 20,),
                Container(
                  color: Colors.white,
                  height: 3,
                  width: 40,
                ),
                SizedBox(width: 20,),

                Container(
                  color: Colors.white,
                  height: 3,
                  width: 40,
                ),
                SizedBox(width: 20,),

                Container(
                  color: Colors.white,
                  height: 3,
                  width: 40,
                ),
                SizedBox(width: 50,),




              ],
            ),
            SizedBox(height: 34,),


            Text("Resend PIN",style: TextStyle(
              color: Colors.white,
              fontSize:16,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w300,

            ),),
            SizedBox(height: 27,),


            CustomMatButton(
              textColor: HexColor("#ED1C24"),
              text: "verify",
              fontSize: 16.0,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PinVerified(),
                fullscreenDialog: true)
                );
              },
              color: Colors.white,

            ),
            SizedBox(height: 28,),


          ],
        ),
      ),
    );
  }
}

class Myotp extends StatefulWidget {
  @override
  _MyotpState createState() => _MyotpState();
}

class _MyotpState extends State<Myotp> {
  int _otpCodeLength = 4;
  bool _isLoadingButton = false;
  bool _enableButton = false;
  String _otpCode = "";
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _getSignatureCode();


  }
  _getSignatureCode() async {
    String signature = await SmsRetrieved.getAppSignature();
    print("signature $signature");
  }

  _onSubmitOtp() {
    setState(() {
      _isLoadingButton = !_isLoadingButton;
      _verifyOtpCode();
    });
  }

  _onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      this._otpCode = otpCode;
      if (otpCode.length == _otpCodeLength && isAutofill) {
        _enableButton = false;
        _isLoadingButton = true;
        _verifyOtpCode();
      } else if (otpCode.length == _otpCodeLength && !isAutofill) {
        _enableButton = true;
        _isLoadingButton = false;
      } else {
        _enableButton = false;
      }
    });
  }
  _verifyOtpCode() {
    FocusScope.of(context).requestFocus(new FocusNode());
    Timer(Duration(milliseconds: 4000), () {
      setState(() {
        _isLoadingButton = false;
        _enableButton = false;
      });

      _scaffoldKey.currentState.showSnackBar(
          SnackBar(content: Text("Verification OTP Code $_otpCode Success")));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold();
  }
}







