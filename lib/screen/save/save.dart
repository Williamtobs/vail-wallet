import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/dashboard.dart';
import 'add_saving/add_saving.dart';

class Save extends StatelessWidget {
  const Save({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 100,
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
          'Save 4 Me',
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
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      const Spacer(),
                      Column(
                        children: [
                          Text('\$1.70',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600, fontSize: 24)),
                          const SizedBox(height: 10),
                          Text('Savings Balance',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600, fontSize: 12)),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return AddMoneyScreen();
                          }));
                        },
                        child: const Icon(Icons.add_circle,
                            size: 35, color: Color.fromRGBO(234, 86, 12, 1)),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Saving History',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400, fontSize: 12)),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Column(
                    children: const [
                      CardTiles(
                        title: 'You Sent Bitcoin',
                        amount: '\$500',
                        image: 'assets/bitcoin_img.png',
                        desc: 'Sent \$ 500 worth of bitcoin to a btc address ',
                        incoming: false,
                      ),
                      SizedBox(height: 5),
                      CardTiles(
                        title: 'Incoming Payment',
                        amount: 'N500',
                        image: 'assets/vail_logo.png',
                        desc:
                            'Incoming payment to your Wallet Address : vw-@-232-xxx from Nkwuda Victor  ',
                        incoming: true,
                      ),
                      SizedBox(height: 5),
                      CardTiles(
                        title: 'You Sent Bitcoin',
                        amount: '\$500',
                        image: 'assets/bitcoin_img.png',
                        desc: 'Sent \$ 500 worth of bitcoin to a btc address ',
                        incoming: false,
                      ),
                      SizedBox(height: 5),
                      CardTiles(
                        title: 'Incoming Payment',
                        amount: 'N500',
                        image: 'assets/vail_logo.png',
                        desc:
                            'Incoming payment to your Wallet Address : vw-@-232-xxx from Nkwuda Victor  ',
                        incoming: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            //height: 60,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(196, 196, 196, 1),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  //width: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(234, 86, 12, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        ColorFiltered(
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcATop),
                            child: Image.asset('assets/home/save.png')),
                        const SizedBox(width: 10),
                        Text(
                          'My Savings',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  //width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromRGBO(234, 86, 12, 1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        ColorFiltered(
                            colorFilter: const ColorFilter.mode(
                                Color.fromRGBO(234, 86, 12, 1), BlendMode.srcATop),
                            child: Image.asset('assets/home/save.png')),
                        const SizedBox(width: 10),
                        Text(
                          'Withdraw',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(234, 86, 12, 1),
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
