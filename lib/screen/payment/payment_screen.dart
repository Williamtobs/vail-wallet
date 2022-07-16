import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vail_wallet/screen/payment/send_crypto/send_crypto.dart';

import '../add_money/add_money_screen.dart';
import 'buy_airtime/buy_airtime.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        leadingWidth: 120,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
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
          'Payments',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Image.asset('assets/add_money.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
                'Boundless payment experience for easy '
                    'payments globally',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ),
          const SizedBox(height: 50),
          Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              'Payment Method',
              style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const BuyAirtimeScreen();
              }));
            },
            child: const Tiles(
                leading: 'assets/payment/box.png',
                title: 'Buy Airtime & pay bills',
                trailing: Icons.arrow_forward_ios),
          ),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          //SendCryptoScreen
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const SendCryptoScreen();
              }));
            },
            child: const Tiles(
                leading: 'assets/payment/bitcoin.png',
                title: 'Send Crypto Currency',
                trailing: Icons.arrow_forward_ios),
          ),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/payment/out.png',
              title: 'Pay Other Vail Users',
              trailing: Icons.arrow_forward_ios),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/payment/transfer.png',
              title: 'Transfer money to Bank',
              trailing: Icons.arrow_forward_ios),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/payment/buy.png',
              title: 'Buy and send giftcards',
              trailing: Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
