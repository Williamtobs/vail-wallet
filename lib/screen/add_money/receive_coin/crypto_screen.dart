import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button.dart';
import '../../widgets/confirm_payment.dart';

class CryptoScreen extends StatelessWidget {
  const CryptoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'Crypto Deposit',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Send Payment in BTC',
                              style: GoogleFonts.mulish(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Open your crypto wallet, or copy the BTC address '
                              'below to make payment',
                              style: GoogleFonts.mulish(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                                color: const Color.fromRGBO(234, 86, 12, 1))),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Image.asset('assets/bitcoin_scan.png'),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'You Pay',
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        'USD 301',
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                color: Color.fromRGBO(218, 218, 218, 1)))),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/vail_logo.png',
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('BTC Amount',
                                style: GoogleFonts.mulish(
                                    fontSize: 12, fontWeight: FontWeight.w700)),
                            const SizedBox(
                              height: 4,
                            ),
                            Text('0.000064537244',
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w500, fontSize: 15)),
                          ],
                        ),
                        const Spacer(),
                        Image.asset('assets/copy.png'),
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    //height: 60,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                color: Color.fromRGBO(218, 218, 218, 1)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/coins/bitcoin.png',
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Wallet Address',
                                  style: GoogleFonts.mulish(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                  'b1vvkvukvukguifgyfd5dtcmkyif6rfyfiigklop8ibor86',
                                  style: GoogleFonts.mulish(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Image.asset('assets/copy.png'),
                      ],
                    )),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 20.0),
            child: Button(
                text: 'I have made the transfer',
                action: () {
                  //UserForm
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ConfirmScreen();
                    //return const DashBoard();
                  }));
                }),
          )
        ],
      ),
    );
  }
}
