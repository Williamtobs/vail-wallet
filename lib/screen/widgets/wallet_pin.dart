import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:vail_wallet/screen/widgets/success.dart';

import 'button.dart';

class WalletPin extends StatefulWidget {
  const WalletPin({Key? key}) : super(key: key);

  @override
  State<WalletPin> createState() => _WalletPinState();
}

class _WalletPinState extends State<WalletPin> {
  final pin = OtpFieldController();
  int position = 0;

  @override
  Widget build(BuildContext context) {
    _onKeyboardTap(String value) {
      setState(() {
        if (position < 5) {
          pin.setValue(value, position);
          position += 1;
        }
      });
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
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
                  Text('Verify your pin to approve transaction ',
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  const SizedBox(
                    height: 40,
                  ),
                  OTPTextField(
                    controller: pin,
                    keyboardType: TextInputType.none,
                    length: 5,
                    obscureText: true,
                    otpFieldStyle: OtpFieldStyle(
                        enabledBorderColor:
                            const Color.fromRGBO(229, 229, 229, 1),
                        borderColor: const Color.fromRGBO(229, 229, 229, 1)),
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 50,
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.w700),
                    textFieldAlignment: MainAxisAlignment.center,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const Success(
                          title: 'Deposit Successful',
                          desc: 'You have successfully added '
                              'USD 826 to your Vail Wallet account',
                        );
                        //return const DashBoard();
                      }));
                    },
                  ),
                ],
              ),
            ),
            NumericKeyboard(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              onKeyboardTap: _onKeyboardTap,
              textColor: Colors.black,
              leftButtonFn: () {
                Navigator.pop(context);
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
                    return const Success(
                      title: 'Deposit Successful',
                      desc: 'You have successfully added '
                          'USD 826 to your Vail Wallet account',
                    );
                    //return const DashBoard();
                  }));
                })
          ],
        ),
      ),
    );
  }
}
