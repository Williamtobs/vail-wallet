import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/button.dart';
import '../../../widgets/input_field.dart';
import '../../../widgets/wallet_pin.dart';

class TransactionDetails extends StatelessWidget {
  TransactionDetails({Key? key}) : super(key: key);

  final TextEditingController note = TextEditingController();

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
                  const SizedBox(height: 40),
                  Text('₦ 3000.00',
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
                  const SizedBox(height: 20),
                  const TransactionField(
                    recipientName: 'Nkwuda Victor C.',
                    acctNum: '2930348472',
                    bankName: 'Guarantee Trusted Bank',
                    amount: '10.,000',
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Transfer Note',
                        style: GoogleFonts.mulish(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  const SizedBox(height: 5),
                  InputField(
                    text: '',
                    controller: note,
                    keyboardType: TextInputType.text,
                  ),
                ],
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

class TransactionField extends StatelessWidget {
  final String bankName;
  final String acctNum;
  final String recipientName, amount;

  const TransactionField(
      {Key? key,
      required this.bankName,
      required this.acctNum,
      required this.recipientName,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 130,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color.fromRGBO(218, 218, 218, 1))),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/gt_bank.png'),
              radius: 22,
            ),
            title: Text(bankName,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700, fontSize: 12)),
            subtitle: Text('Account Number: $acctNum',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 12)),
          ),
          const SizedBox(height: 5),
          const Divider(color: Color.fromRGBO(0, 0, 0, 1)),
          const SizedBox(height: 15),
          Row(
            children: [
              Text('Recipient Name',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 11)),
              const Spacer(),
              Text('Amount',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 11))
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(recipientName,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 11)),
              const Spacer(),
              Text('₦ $amount',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 11))
            ],
          )
        ],
      ),
    );
  }
}
