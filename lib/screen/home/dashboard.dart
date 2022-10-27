import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vail_wallet/screen/widgets/bottom_modal.dart';
import 'package:vail_wallet/screen/widgets/button.dart';

import '../add_money/add_money_screen.dart';
import '../payment/payment_screen.dart';
import '../profile/profile_screen.dart';
import '../save/save.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Profile();
                }));
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 22,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Good Morning Victor Chike',
                    style: GoogleFonts.mulish(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                const SizedBox(height: 3),
                Text('Welcome back',
                    style: GoogleFonts.mulish(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
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
                InkWell(
                  onTap: () {
                    BottomSheets.showBottomSheet(
                        context: context,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, top: 10, bottom: 10),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Text('Set Vail Wallet Address',
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black)),
                                const SizedBox(height: 10),
                                Text(
                                    'Chose a unique Vail Wallet address for getting paid'
                                    ' by anyone using vailwallet',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText:
                                            'Enter your Vail Wallet address',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: const BorderSide(
                                                width: 1,
                                                color: Color.fromRGBO(
                                                    234, 86, 12, 1))),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: const BorderSide(
                                                width: 1,
                                                color: Color.fromRGBO(
                                                    234, 86, 12, 1))),
                                        hintStyle: GoogleFonts.mulish(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text('vailwallet.com/vw@vailwallet',
                                    style: GoogleFonts.mulish(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black)),
                                const SizedBox(height: 20),
                                Button(text: 'Set Access', action: () {})
                              ],
                            ),
                          ),
                        ));
                  },
                  child: Image.asset(
                    'assets/messages.png',
                    height: 35,
                    width: 35,
                  ),
                ),
                const SizedBox(width: 4),
                Image.asset(
                  'assets/Notification.png',
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
          Text('\$ 10.00',
              style: GoogleFonts.mulish(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Colors.black)),
          // const SizedBox(height: 10),
          // Text('Wallet Balance',
          //     style: GoogleFonts.nunito(
          //         fontSize: 15,
          //         fontWeight: FontWeight.w700,
          //         color: Colors.black)),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10),
            child: ChooseOption(),
          ),
          const SizedBox(height: 20),
          Container(color: const Color.fromRGBO(218, 218, 218, 1), height: 10),
          const SizedBox(height: 10),
          SingleChildScrollView(
            child: Column(
              children: [
                const CardTiles(
                  title: 'You Sent Bitcoin',
                  amount: '\$500',
                  image: 'assets/bitcoin_img.png',
                  desc: 'Sent \$ 500 worth of bitcoin to a btc address ',
                  incoming: false,
                ),
                Container(
                    color: const Color.fromRGBO(218, 218, 218, 1), height: 10),
                const CardTiles(
                  title: 'Incoming Payment',
                  amount: 'N500',
                  image: 'assets/vail_logo.png',
                  desc:
                      'Incoming payment to your Wallet Address : vw-@-232-xxx from Nkwuda Victor  ',
                  incoming: true,
                ),
                Container(
                    color: const Color.fromRGBO(218, 218, 218, 1), height: 10),
                const CardTiles(
                  title: 'You Sent Bitcoin',
                  amount: '\$500',
                  image: 'assets/bitcoin_img.png',
                  desc: 'Sent \$ 500 worth of bitcoin to a btc address ',
                  incoming: false,
                ),
                Container(
                    color: const Color.fromRGBO(218, 218, 218, 1), height: 10),
                const CardTiles(
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const AddMoney();
            }));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Image.asset('assets/home/add_money.png', height: 40, width: 40),
                const SizedBox(height: 5),
                Text('Add Money',
                    style: GoogleFonts.mulish(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Image.asset('assets/home/scan_pay.png'),
              const SizedBox(height: 5),
              Text('Scan to pay',
                  style: GoogleFonts.mulish(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Save();
            }));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Image.asset('assets/home/save_me.png'),
                const SizedBox(height: 5),
                Text('Save 4 me',
                    style: GoogleFonts.mulish(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const PaymentScreen();
            }));
            //PaymentScreen
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Image.asset('assets/home/payment2.png'),
                const SizedBox(height: 5),
                Text('Payment',
                    style: GoogleFonts.mulish(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ],
            ),
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
        elevation: 0,
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
                      Text(title,
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
