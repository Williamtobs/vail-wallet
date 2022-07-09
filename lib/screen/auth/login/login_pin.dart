import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:vail_wallet/screen/home/dashboard.dart';
import 'package:vail_wallet/screen/onboarding/onboarding_screen.dart';

import '../../partials/bottom_navigation.dart';
import '../../widgets/button.dart';

class LoginWithPin extends StatefulWidget {
  const LoginWithPin({Key? key}) : super(key: key);

  @override
  State<LoginWithPin> createState() => _LoginWithPinState();
}

class _LoginWithPinState extends State<LoginWithPin> {
  final pin = OtpFieldController();
  int position = 0;

  @override
  Widget build(BuildContext context) {

    _onKeyboardTap(String value) {
      setState(() {
        if (position < 4) {
          pin.setValue(value, position);
          position += 1;
        }
      });
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Enter Wallet Pin',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  const SizedBox(
                    height: 10,
                  ),
                  //Enter your security code to login
                  Text('Enter your security code to login',
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  const SizedBox(height: 40,),
                  OTPTextField(
                    controller: pin,
                    keyboardType: TextInputType.none,
                    length: 4,
                    obscureText: true,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 50,
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w400),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {
                    },
                  ),
                ],
              ),
            ),
            NumericKeyboard(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              onKeyboardTap: _onKeyboardTap,
              textColor: Colors.black,
              leftButtonFn: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                  return const OnboardingScreen();
                }), (route) => false);
              },
              rightButtonFn: () {
                setState(() {
                  pin.clear();
                  position = 0;
                  //phone.text = phone.text.substring(0, phone.text.length - 1);
                  //text = text!.substring(0, text!.length - 1);
                });
              },
              leftIcon: const Icon(Icons.logout, color: Colors.black),
              rightIcon: const Icon(
                Icons.backspace,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Text('Forgot Wallet Pin?',
                style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            const SizedBox(height: 30),
            Button(
                text: 'Continue',
                action: () {
                  //UserForm
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const BottomCustomNavigation();
                    //return const DashBoard();
                  }));
                })
          ],
        ),
      ),
    );
  }
}
