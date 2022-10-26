import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:vail_wallet/screen/nav/send_money/select_recipient.dart';
import 'package:vail_wallet/screen/nav/send_money/transaction_details.dart';

import '../../widgets/button.dart';

class SendMoneyScreen extends StatefulWidget {
  final String? title;

  const SendMoneyScreen({Key? key, this.title}) : super(key: key);

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  TextEditingController address = TextEditingController();

  TextEditingController note = TextEditingController();

  String text = '';

  String? country;

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
          widget.title ?? 'Send Money',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 10),
            child: Text(
              'Currency',
              style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(234, 86, 12, 1)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Center(
                    child: Text(
                      '€ 0.00 $text',
                      style: GoogleFonts.mulish(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return const SelectReceiver();
                            }));
                      },
                      child: const SelectedCard()),
                  // Text('Wallet Balance',
                  //     style: GoogleFonts.mulish(
                  //       fontSize: 10,
                  //       fontWeight: FontWeight.w700,
                  //     )),
                  // const SizedBox(height: 30),
                  // Align(
                  //   alignment: Alignment.bottomLeft,
                  //   child: Text('Wallet Address',
                  //       style: GoogleFonts.nunito(
                  //         fontSize: 11,
                  //         fontWeight: FontWeight.w700,
                  //       )),
                  // ),
                  // const SizedBox(height: 5),
                  // SizedBox(
                  //   height: 50,
                  //   child: TextField(
                  //     controller: address,
                  //     style: GoogleFonts.roboto(
                  //         fontSize: 16, fontWeight: FontWeight.w400),
                  //     decoration: InputDecoration(
                  //       suffixIcon: Image.asset('assets/home/scan.png'),
                  //       filled: false,
                  //       border: OutlineInputBorder(
                  //           borderSide: const BorderSide(
                  //               color: Color.fromRGBO(189, 189, 189, 1), width: 1),
                  //           borderRadius: BorderRadius.circular(5)),
                  //       focusedBorder: OutlineInputBorder(
                  //           borderSide: const BorderSide(
                  //               color: Color.fromRGBO(189, 189, 189, 1), width: 1),
                  //           borderRadius: BorderRadius.circular(5)),
                  //       enabledBorder: OutlineInputBorder(
                  //           borderSide: const BorderSide(
                  //               color: Color.fromRGBO(189, 189, 189, 1), width: 1),
                  //           borderRadius: BorderRadius.circular(5)),
                  //       hintText: 'Tap to paste wallet address',
                  //       hintStyle: GoogleFonts.roboto(
                  //           fontSize: 14, fontWeight: FontWeight.w400),
                  //       isDense: true,
                  //       contentPadding: const EdgeInsets.all(15.0),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 30),
                  // Text(
                  //   'Account Validation',
                  //   style: GoogleFonts.mulish(
                  //       fontSize: 12, fontWeight: FontWeight.w700),
                  // ),
                  // const SizedBox(height: 10),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const DetailsCard(
                  //       name: 'Nkwuda Victor',
                  //       wallet: 'VW-@-128-987',
                  //     ),
                  //     SvgPicture.asset('assets/link.svg'),
                  //     const DetailsCard(
                  //       name: 'Ebere Eze m',
                  //       wallet: 'VW-@-128-987',
                  //     )
                  //   ],
                  // ),
                  // const SizedBox(height: 20),
                  // Align(
                  //   alignment: Alignment.bottomLeft,
                  //   child: Text('Enter Amount',
                  //       style: GoogleFonts.mulish(
                  //           fontSize: 10, fontWeight: FontWeight.w700)),
                  // ),
                  // const SizedBox(height: 5),
                  // Row(
                  //   children: [
                  //     Container(
                  //       width: MediaQuery.of(context).size.width * 0.45,
                  //       height: 50,
                  //       alignment: Alignment.center,
                  //       decoration: BoxDecoration(
                  //           border: Border.all(
                  //               color: const Color.fromRGBO(218, 218, 218, 1))),
                  //       child: const Padding(
                  //         padding: EdgeInsets.only(left: 20.0),
                  //         child: Center(
                  //           child: TextField(
                  //             keyboardType: TextInputType.number,
                  //             decoration: InputDecoration(
                  //               filled: false,
                  //               border: InputBorder.none,
                  //               enabledBorder: InputBorder.none,
                  //               focusedBorder: InputBorder.none,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     const SizedBox(width: 10),
                  //     SelectCurrency(
                  //       country: country,
                  //     )
                  //   ],
                  // ),
                  // const SizedBox(height: 20),
                  // Align(
                  //   alignment: Alignment.bottomLeft,
                  //   child: Text('Note',
                  //       style: GoogleFonts.mulish(
                  //           fontSize: 10, fontWeight: FontWeight.w700)),
                  // ),
                  // const SizedBox(height: 5),
                  // InputField(
                  //   text: 'What is it for',
                  //   controller: note,
                  //   keyboardType: TextInputType.text,
                  // ),
                  // const SizedBox(height: 20),
                  // Image.asset('assets/finger_scan.png'),
                  // const SizedBox(height: 10),
                  // Text(
                  //   'Complete Payment with face ID or fingerprint',
                  //   style: GoogleFonts.mulish(
                  //       fontSize: 10, fontWeight: FontWeight.w500),
                  // )
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SendMoneyDetails(
                      amount: text,
                      name: 'Ebere Ikenna m', address: ' VW@-XXX-XXX',
                    );
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
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text('Nkwuda Victor',
                    style: GoogleFonts.nunito(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(47, 57, 78, 1))),
                const SizedBox(height: 5),
                Text(
                  'VW@nkwuda234',
                  style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(47, 57, 78, 1)),
                )
              ],
            ),
            const Spacer(),
            const RotatedBox(
                quarterTurns: 3, child: Icon(Icons.expand_circle_down_outlined, size: 30,))
          ],
        ),
      ),
    );
  }
}

class SelectCurrency extends StatefulWidget {
  String? country;

  SelectCurrency({Key? key, required this.country}) : super(key: key);

  @override
  State<SelectCurrency> createState() => _SelectCurrencyState();
}

class _SelectCurrencyState extends State<SelectCurrency> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          showCurrencyPicker(
            context: context,
            showFlag: true,
            showSearchField: false,
            showCurrencyName: true,
            showCurrencyCode: true,
            onSelect: (Currency currency) {
              setState(() {
                widget.country = currency.code;
                //widget.flag = currency.flag!;
              });
            },
          );
        },
        child: Container(
          height: 50,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border.all(color: const Color.fromRGBO(218, 218, 218, 1))),
          child: Column(
            children: [
              Text(
                'Select Currency',
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(47, 57, 78, 1)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //flag == null
                    //  ? Container()
                    //: CircleAvatar(
                    //  backgroundImage: AssetImage(flag!),
                    //),
                    Text(
                      widget.country ?? 'Select',
                      style: GoogleFonts.nunito(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.expand_circle_down_outlined,
                        color: Color.fromRGBO(47, 57, 78, 1))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final String name, wallet;

  const DetailsCard({Key? key, required this.name, required this.wallet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 10.0,
                offset: Offset(0.0, 0.30)),
          ],
          color: const Color.fromRGBO(255, 255, 255, 1),
          border: Border.all(color: const Color.fromRGBO(218, 218, 218, 1))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset('assets/profile.png'),
            const SizedBox(
              width: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,
                    style: GoogleFonts.mulish(
                        fontSize: 12, fontWeight: FontWeight.w700)),
                Text(wallet,
                    style: GoogleFonts.mulish(
                        fontSize: 12, fontWeight: FontWeight.w700))
              ],
            )
          ],
        ),
      ),
    );
  }
}
