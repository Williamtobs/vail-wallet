import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../add_money/add_money_screen.dart';
import 'coin/selected_coin.dart';

class ReceiveCrypto extends StatelessWidget {
  const ReceiveCrypto({Key? key}) : super(key: key);

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
          'Receive Crypto',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/token.png',
            height: 157,
            width: 187,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'This system allows you to receive '
              'crypto currency directly to your wallet',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Crypto Currency', style: GoogleFonts.mulish(
                fontWeight: FontWeight.w700,
                fontSize: 14,
              )),
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const SelectedCoin(coinName: 'Bitcoin',);
              }));
            },
            child: const Tiles(
                leading: 'assets/coins/bitcoin.png',
                title: 'Bitcoin',
                trailing: Icons.arrow_forward_ios),
          ),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/coins/eth.png',
              title: 'Ethereum',
              trailing: Icons.arrow_forward_ios),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/coins/usdt.png',
              title: 'USD Coin',
              trailing: Icons.arrow_forward_ios),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/coins/doge.png',
              title: 'Dogecoin',
              trailing: Icons.arrow_forward_ios),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/coins/solana.png',
              title: 'Solana',
              trailing: Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
