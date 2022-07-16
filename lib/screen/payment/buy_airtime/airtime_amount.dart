import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

import '../../widgets/button.dart';
import '../../widgets/wallet_pin.dart';

class InsertAirtimeAmount extends StatefulWidget {
  const InsertAirtimeAmount({Key? key}) : super(key: key);

  @override
  State<InsertAirtimeAmount> createState() => _InsertAirtimeAmountState();
}

class _InsertAirtimeAmountState extends State<InsertAirtimeAmount> {
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, right: 4.0),
          child: Row(
            children: [
              const Icon(Icons.arrow_back_ios,
                  color: Color.fromRGBO(234, 86, 12, 1)),
              Text(
                'Back',
                style: GoogleFonts.mulish(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(234, 86, 12, 1)),
              )
            ],
          ),
        ),
        centerTitle: true,
        title: Text(
          'How much airtime ??',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text('\$1.70',
                      style: GoogleFonts.mulish(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 10),
                  Text('Wallet Balance',
                      style: GoogleFonts.mulish(
                        fontSize:10,
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(height: 30),
                  Text(
                    'N $text',
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            NumericKeyboard(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              onKeyboardTap: _onKeyboardTap,
              textColor: Colors.black,
              leftButtonFn: () {
                Navigator.pop(context);
              },
              rightButtonFn: () {
                setState(() {
                  text = text.substring(0, text.length - 1);
                });
              },
              leftIcon: const Icon(Icons.logout, color: Colors.black),
              rightIcon: const Icon(
                Icons.backspace,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            Button(
                text: 'Continue',
                action: () {
                  //UserForm
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const WalletPin();
                    //return const DashBoard();
                  }));
                })
          ],
        ),
      ),
    );
  }
}
