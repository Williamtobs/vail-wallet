import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../add_money/add_money_screen.dart';
import '../payment/payment_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
              radius: 22,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello Victor Chike',
                    style: GoogleFonts.nunito(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                const SizedBox(height: 3),
                Text('Welcome to Vail Wallet',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ],
            )
          ],
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/messages.png',
                  height: 35,
                  width: 35,
                ),
                const SizedBox(width: 4),
                Image.asset(
                  'assets/notification.png',
                  height: 35,
                  width: 35,
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Text('\$ 1.70',
              style: GoogleFonts.nunito(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
          const SizedBox(height: 10),
          Text('Wallet Balance',
              style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10),
            child: ChooseOption(),
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Color.fromRGBO(218, 218, 218, 1),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
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
                  desc: 'Incoming payment to your Wallet Address : vw-@-232-xxx from Nkwuda Victor  ',
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
                  desc: 'Incoming payment to your Wallet Address : vw-@-232-xxx from Nkwuda Victor  ',
                  incoming: true,
                ),
              ],
            ),
          ),
          //const CardTiles(),
        ],
      ),
    );
  }
}

class ChooseOption extends StatelessWidget {
  const ChooseOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const AddMoney();
            }));
          },
          child: Column(
            children: [
              Image.asset('assets/home/wallet.png'),
              Text('Add Money',
                  style: GoogleFonts.nunito(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ],
          ),
        ),
        Column(
          children: [
            Image.asset('assets/home/scan.png'),
            Text('Scan to pay',
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ],
        ),
        Column(
          children: [
            Image.asset('assets/home/save.png'),
            Text('Save 4 me',
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ],
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const PaymentScreen();
            }));
            //PaymentScreen
          },
          child: Column(
            children: [
              Image.asset('assets/home/payment.png'),
              Text('Payment',
                  style: GoogleFonts.nunito(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ],
          ),
        )
      ],
    );
  }
}

class CardTiles extends StatelessWidget {
  final String title, amount, desc, image;
  final bool incoming;

  const CardTiles(
      {Key? key,
      required this.title,
      required this.amount,
      required this.image,
      required this.desc,
      required this.incoming})
      : super(key: key);

  //'assets/bitcoin_img.png'

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('You Sent Bitcoin',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      Text('23 minutes ago',
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black))
                    ],
                  ),
                  const Spacer(),
                  Text(incoming ? '+ $amount' : '- $amount',
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: incoming
                              ? const Color.fromRGBO(0, 154, 70, 1)
                              : Colors.red))
                ],
              ),
              const SizedBox(height: 5),
              Text(desc,
                  style: GoogleFonts.mulish(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
