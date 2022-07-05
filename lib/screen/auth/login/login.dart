import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button.dart';
import '../../widgets/input_field.dart';
import '../../widgets/success.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool value = false;

  bool welcome = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Text(welcome ? 'Welcome Back' : 'Sign In',
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
                  Text(
                      welcome
                          ? 'Hello Victor Nkwuda'
                          : 'Please login to continue',
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Password',
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      const Spacer(),
                      Text('Min. 8 Characters',
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 2),
                  InputField(
                    text: 'Password',
                    controller: password,
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text('Forgot Password?',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button(
                    text: 'Sign In',
                    action: () {
                      //Success
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  welcome
                      ? Center(
                    child: Column(
                      children: [
                        Image.asset('assets/sound.png', height: 60, width: 50),
                        const SizedBox(height: 10),
                        Text('Sing in with finger print',
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black))
                      ],
                    ),
                  )
                      : Container()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
