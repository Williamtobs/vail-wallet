import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bank_deposit/money_deposit.dart';
import 'crypto/receive_crypto.dart';

class MoneyOption extends StatelessWidget {
  const MoneyOption({Key? key}) : super(key: key);

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
          'Receive Money',
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
                  Text(
                    'Send money from another Vail Wallet account to your address',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
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
          ListTile(
            title: Text(
              'Wallet Address',
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w700,
                fontSize: 10,
              ),
            ),
            subtitle: Text('VW-@-XXX-XXX',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                )),
            trailing: Image.asset('assets/copy.png'),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ReceiveCrypto();
                }));
              },
              child: const OptionList(
                  title: 'Crypto Currency',
                  subtitle: 'Receive crypto payment')),
          //MoneyDeposit
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MoneyDeposit();
                }));
              },
              child: const OptionList(
                  title: 'Bank Deposit', subtitle: 'Receive Bank transfers'))
        ],
      ),
    );
  }
}

class OptionList extends StatelessWidget {
  final String title, subtitle;

  const OptionList({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 60,
      //padding: EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: Color.fromRGBO(218, 218, 218, 1)))),
      child: ListTile(
        title: Text(title,
            style: GoogleFonts.mulish(
              fontWeight: FontWeight.w700,
              fontSize: 10,
            )),
        subtitle: Text(subtitle,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            )),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
