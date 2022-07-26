import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoneyDeposit extends StatelessWidget {
  const MoneyDeposit({Key? key}) : super(key: key);

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
          'Bank Deposit',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromRGBO(218, 218, 218, 1))),
              child: Row(
                children: [
                  Image.asset('assets/flag.png'),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Select Country',
                          style: GoogleFonts.nunito(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      /*const SizedBox(
                        height: 2,
                      ),*/
                      Text(
                        'Nigeria',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.expand_circle_down_outlined)
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border:
                  Border.all(color: const Color.fromRGBO(218, 218, 218, 1))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Money Transfer sent to this bank account number will '
                      'automatically top up your Vail Wallet. Receive your salary '
                      'or funds from any bank account locally, direct into your '
                      'Vail Wallet', style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w500
                  )),
                  const SizedBox(height: 10),
                  const DepositTile(subTitle: '0387834544', title: 'Account Number',),
                  const SizedBox(height: 5),
                  const DepositTile(subTitle: 'Wema Bank', title: 'Bank Name',),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DepositTile extends StatelessWidget {
  final String title, subTitle;
  const DepositTile({Key? key, required this.title, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: GoogleFonts.nunito(
        fontWeight: FontWeight.w700,
        fontSize: 12
      )),
      subtitle: Text(subTitle, style: GoogleFonts.nunito(
          fontWeight: FontWeight.w500,
          fontSize: 10
      )),
      trailing: Image.asset('assets/copy.png'),
    );
  }
}

