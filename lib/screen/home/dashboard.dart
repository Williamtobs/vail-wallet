import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(234, 86, 12, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(234, 86, 12, 1),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Color.fromRGBO(234, 86, 12, 1)),
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello Victor Chike',
                    style: GoogleFonts.nunito(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                const SizedBox(height: 3),
                Text('Welcome to Vail Wallet',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
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
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('assets/messages.png'),
                      )),
                ),
                const SizedBox(width: 4),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('assets/notification.png'),
                      )),
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text('Available Balance',
                    style: GoogleFonts.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                const SizedBox(height: 20),
                Text('\$ 100,000.00',
                    style: GoogleFonts.nunito(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                const SizedBox(height: 30),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.70,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Text('Payment History',
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          const SizedBox(height: 20),
                          const CardTiles(),
                          const SizedBox(height: 10),
                          const CardTiles()
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 8,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 74,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: const Card(
                            elevation: 1,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: ChooseOption(),
                            )),
                      ),
                    ))
              ],
            ),
          )
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
        Column(
          children: [
            const Icon(
              Icons.account_balance_wallet,
              color: Color.fromRGBO(234, 86, 12, 1),
            ),
            Text('Deposit',
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.sync_alt,
              color: Color.fromRGBO(234, 86, 12, 1),
            ),
            Text('Exchange',
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.currency_exchange,
              color: Color.fromRGBO(234, 86, 12, 1),
            ),
            Text('Save 4 me',
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.arrow_upward,
              color: Color.fromRGBO(234, 86, 12, 1),
            ),
            Text('Payment',
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ],
        )
      ],
    );
  }
}

class CardTiles extends StatelessWidget {
  const CardTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
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
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/bitcoin_img.png'),
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
                  Text('+ USD 500',
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(0, 154, 70, 1)))
                ],
              ),
              const SizedBox(height: 5),
              Text('Sent \$ 500 worth of bitcoin to a btc address ',
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
