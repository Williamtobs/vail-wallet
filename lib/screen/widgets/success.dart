import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/success.png',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Congratulation',
                      style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(246, 111, 71, 1))),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                      'You have successfully created your account '
                      'click on the button below to login',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),

                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              text: 'Done',
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}
