import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

import '../../add_money/credit_card/card_payment.dart';
import '../../widgets/button.dart';
import '../../widgets/wallet_pin.dart';

class SendCryptoScreen extends StatefulWidget {
  const SendCryptoScreen({Key? key}) : super(key: key);

  @override
  State<SendCryptoScreen> createState() => _SendCryptoScreenState();
}

class _SendCryptoScreenState extends State<SendCryptoScreen> {
  TextEditingController address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _onKeyboardTap(String value) {
      setState(() {
        //text = text! + value;
        address.text += value;
      });
    }
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
          'Send Crypto',
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text('\$1.70',
                        style: GoogleFonts.mulish(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        )),
                    const SizedBox(height: 10),
                    Text('Wallet Balance',
                        style: GoogleFonts.mulish(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(height: 30),
                    const SelectedCard(),
                    const SizedBox(height: 20),
                    Text('NGN 450,000.00',
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(height: 10),
                    Text('0.00000980 BTC',
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Wallet Address',
                          style: GoogleFonts.nunito(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: address,
                        style:
                            GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          suffixIcon: Image.asset('assets/home/scan.png'),
                          filled: false,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(189, 189, 189, 1), width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(189, 189, 189, 1), width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(189, 189, 189, 1), width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Tap to paste wallet address',
                          hintStyle:
                              GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(15.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
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
                    address.text = address.text.substring(0, address.text.length - 1);
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
                  return const WalletPin();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
