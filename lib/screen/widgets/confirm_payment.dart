import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: ,
              children: [
                Center(
                  child: Image.asset('assets/processing.png'),
                ),
                const SizedBox(height: 20,),
                Text(
                  'Confirming Payment',
                  style: GoogleFonts.mulish(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30, ),
                  child: Text(
                    'Your transaction is processing '
                        'please hold on for payment confirmation',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.mulish(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 20.0),
            child: Button(
                text: 'Done',
                action: () {
                  //UserForm
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return const WalletPin();
                  //   //return const DashBoard();
                  // }));
                }),
          )
        ],
      ),
    );
  }
}
