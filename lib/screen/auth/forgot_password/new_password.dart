import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button.dart';
import '../../widgets/input_field.dart';

class NewPassword extends StatelessWidget {
  NewPassword({Key? key}) : super(key: key);

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            right: 10.0, top: 20, left: 10.0, bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text('Reset Password',
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
                'Enter your New password',
                style: GoogleFonts.mulish(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
            const SizedBox(height: 30),
            Row(
              children: [
                Text('New Password',
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: InputField(
                text: 'Password',
                controller: password,
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              text: 'Reset',
              action: () {
                //Success
              },
            ),
          ],
        ),
      ),
    );
  }
}
