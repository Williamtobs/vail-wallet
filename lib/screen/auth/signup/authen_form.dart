import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button.dart';
import '../../widgets/input_field.dart';
import '../../widgets/success.dart';

class AuthenticationForm extends StatefulWidget {
  const AuthenticationForm({Key? key}) : super(key: key);

  @override
  State<AuthenticationForm> createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool value = false;

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
                  Text(
                      'We need an email for notifications and'
                      '\na password for login purpose.',
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
                      Text('Set a Password',
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
                  Row(
                    children: [
                      Checkbox(
                          activeColor: const Color.fromRGBO(234, 86, 12, 1),
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          }),
                      Text(
                          'I agree to the Terms of service  and Privacy Policy',
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              text: 'Continue',
              action: () {
                //Success
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Success();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
