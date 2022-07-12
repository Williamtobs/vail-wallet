import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

import '../../widgets/button.dart';
import '../../widgets/wallet_pin.dart';
import 'cards/select_card.dart';

class CardPaymentScreen extends StatefulWidget {
  const CardPaymentScreen({Key? key}) : super(key: key);

  @override
  State<CardPaymentScreen> createState() => _CardPaymentScreenState();
}

class _CardPaymentScreenState extends State<CardPaymentScreen> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    _onKeyboardTap(String value) {
      setState(() {
        text = text + value;
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
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
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
          'Credit Card',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SelectCard();
                        }));
                      },
                      child: const SelectedCard()),
                  const SizedBox(height: 50),
                  Center(
                    child: Text(
                      '\$ $text',
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
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

class SelectedCard extends StatelessWidget {
  const SelectedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: const Color.fromRGBO(218, 218, 218, 1)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: const DecorationImage(
                      image: AssetImage('assets/gt_bank.png'),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text('Select added credit card',
                    style: GoogleFonts.nunito(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(47, 57, 78, 1))),
                const SizedBox(height: 5),
                Text(
                  'GTB visa card',
                  style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(47, 57, 78, 1)),
                )
              ],
            ),
            const Spacer(),
            const Icon(Icons.expand_circle_down_outlined)
          ],
        ),
      ),
    );
  }
}
