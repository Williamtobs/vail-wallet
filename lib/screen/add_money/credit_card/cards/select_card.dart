import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/button.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Select Credit Card',
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
                children: const [
                  SizedBox(height: 20),
                  CreditCardWidget(
                    image: 'assets/blue_card.png',
                    bankName: 'Gt Bank',
                    cardNumber: '4853',
                    cardType: 'visa',
                  ),
                  CreditCardWidget(
                    image: 'assets/red_card.png',
                    bankName: 'Dutch Bangla Bank',
                    cardNumber: '1756',
                    cardType: 'master',
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Button(
                text: 'Add Card',
                action: () {
                  //UserForm
                  //Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //return const BottomCustomNavigation();
                  //return const DashBoard();
                  //}));
                })
          ],
        ),
      ),
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  final String image, bankName, cardNumber, cardType;

  const CreditCardWidget(
      {Key? key,
      required this.image,
      required this.bankName,
      required this.cardNumber,
      required this.cardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30, right: 40, left: 40),
      width: MediaQuery.of(context).size.width,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/nexuspay_logo.png'),
              const SizedBox(width: 5),
              Text(
                bankName,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white),
              )
            ],
          ),
          const SizedBox(height: 20),
          Text(
            '**** **** ****$cardNumber',
            style: GoogleFonts.aclonica(
                fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Platinum Plus',
                style: GoogleFonts.acme(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white),
              ),
              const Spacer(),
              Text(
                'Exp 01/22',
                style: GoogleFonts.aclonica(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                'Sunny Aveiro',
                style: GoogleFonts.acme(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white),
              ),
              const Spacer(),
              Image.asset(cardType == 'visa'
                  ? 'assets/visa.png'
                  : 'assets/master_card.png', width: 50, height: 30,)
            ],
          ),
        ],
      ),
    );
  }
}
