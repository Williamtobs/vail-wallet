import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:vail_wallet/screen/auth/signup/verify_otp.dart';

import '../../widgets/button.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onKeyboardTap(String value) {
      setState(() {
        //text = text! + value;
        phone.text += value;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
            right: 10.0, top: 20, left: 10.0, bottom: 30.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text('Sign Up',
                          style: GoogleFonts.inter(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      const Spacer(),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: Card(
                          child: Image.asset(
                            'assets/vail_logo.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                  Text('Enter your phone number below.',
                      style: GoogleFonts.mulish(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  const SizedBox(height: 20),
                  Text(
                      'We will send a 4 digit verification code '
                      'to verify your phone number.',
                      style: GoogleFonts.mulish(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  const SizedBox(height: 20),
                  PhoneInput(phone: phone),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: NumericKeyboard(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                onKeyboardTap: _onKeyboardTap,
                textColor: Colors.black,
                rightButtonFn: () {
                  setState(() {
                    phone.text = phone.text.substring(0, phone.text.length - 1);
                    //text = text!.substring(0, text!.length - 1);
                  });
                },
                rightIcon: const Icon(
                  Icons.backspace,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Button(
              text: 'Send OTP',
              action: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const OtpScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}

class PhoneInput extends StatelessWidget {
  final TextEditingController phone;

  const PhoneInput({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(189, 189, 189, 1))),
      child: Row(
        children: [
          CountryCodePicker(
            onChanged: (value) {},
            initialSelection: 'NG',
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
            showFlag: true,
            flagWidth: 26,
            hideSearch: true,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.60,
            height: 40,
            child: TextFormField(
                controller: phone,
                //showCursor: true,
                readOnly: true,
                keyboardType: TextInputType.none,
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  hintText: 'Your Phone Number',
                  hintStyle: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w400),
                  filled: false,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.only(top: 15, bottom: 15.0),
                )),
          )
        ],
      ),
    );
  }
}
