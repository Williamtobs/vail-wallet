import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedCoin extends StatelessWidget {
  final String coinName;

  const SelectedCoin({Key? key, required this.coinName}) : super(key: key);

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
          'Receive $coinName',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(252, 230, 219, 1)),
              child: Row(
                children: [
                  const Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: Text(
                      'Sending to a wallet address that can not receive  BTC will  result '
                      'in the loss of these coins',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 244,
            height: 244,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/bar_code.png',
                    ),
                    fit: BoxFit.fill)),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
              'scan or enter this wallet address in Vail Wallet '
              'or any other app that can send BTC to receive Bitcoin',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  border: Border.symmetric(
                      horizontal:
                          BorderSide(color: Color.fromRGBO(218, 218, 218, 1)))),
              child: Row(
                children: [
                  Image.asset(
                    'assets/coins/bitcoin.png',
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Wallet Address',
                          style: GoogleFonts.nunito(
                              fontSize: 14, fontWeight: FontWeight.w700)),
                      const SizedBox(
                        height: 4,
                      ),
                      Text('b1vvkvukvukguifgyfd5dtcmkyif6rfyfiigklop8ibor86',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500, fontSize: 11)),
                    ],
                  ),
                  const Spacer(),
                  Image.asset('assets/copy.png'),
                ],
              )),
        ],
      ),
    );
  }
}
