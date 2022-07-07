import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vail_wallet/screen/auth/forgot_password/verify_otp.dart';

import '../../widgets/button.dart';
import '../../widgets/input_field.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            right: 10.0, top: 20, left: 10.0, bottom: 30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text('Forget Password',
                  style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              const Spacer(),
              Container(
                height: 60,
                width: 60,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Card(
                  child: Image.asset(
                    'assets/vail_logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          Text(
              'Enter your email below we will send you '
              'a verification code to reset your password',
              style: GoogleFonts.mulish(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
          const SizedBox(height: 20),
          Text('E-mail',
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
          const SizedBox(height: 2),
          InputField(
            text: 'Email address',
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 20,
          ),
          Button(
            text: 'Send',
            action: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ForgotPassOtp();
              }));
              //Success
            },
          ),
        ]),
      ),
    );
  }
}
