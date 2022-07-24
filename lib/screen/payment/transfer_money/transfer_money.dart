import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:vail_wallet/screen/payment/transfer_money/select_bank/select_bank.dart';

import '../../widgets/button.dart';
import '../../widgets/input_field.dart';

class TransferToBank extends StatefulWidget {
  const TransferToBank({Key? key}) : super(key: key);

  @override
  State<TransferToBank> createState() => _TransferToBankState();
}

class _TransferToBankState extends State<TransferToBank> {

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
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, right: 4.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
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
        ),
        centerTitle: true,
        title: Text(
          'Bank Transfer',
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
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.70,
                        child: Text('Enter your Bank Account Number below',
                            style: GoogleFonts.mulish(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                      ),
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
                  const SizedBox(height: 20),
                  InputField(controller: phone, text: 'Account Number', ),
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
                leftIcon: const Icon(Icons.logout, color: Colors.black),
                leftButtonFn: () {
                  Navigator.pop(context);
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
              text: 'Next',
              action: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SelectBank();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
