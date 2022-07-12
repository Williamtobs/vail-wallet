import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'credit_card/card_payment.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  String? country;
  String? flag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Add Money',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, color: Colors.black),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wallet Address',
                            style: GoogleFonts.nunito(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'VW-@123-123',
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(41, 45, 50, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 5),
                      const Icon(Icons.content_copy,
                          color: Color.fromRGBO(41, 45, 50, 1))
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      showCurrencyPicker(
                        context: context,
                        showFlag: true,
                        showSearchField: false,
                        showCurrencyName: true,
                        showCurrencyCode: true,
                        onSelect: (Currency currency) {
                          setState(() {
                            country = currency.code;
                            flag = currency.flag;
                          });
                        },
                      );
                    },
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Select Currency',
                            style: GoogleFonts.nunito(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(47, 57, 78, 1)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //flag == null
                              //  ? Container()
                              //: CircleAvatar(
                              //  backgroundImage: AssetImage(flag!),
                              //),
                              Text(
                                country == null ? 'Select' : country!,
                                style: GoogleFonts.nunito(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Icon(Icons.expand_circle_down_outlined,
                                  color: Color.fromRGBO(47, 57, 78, 1))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Image.asset('assets/add_money.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
                'Choose your preferred deposit option '
                'to your selected currency for quick deposit',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deposit Option',
                  style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  country ?? '',
                  style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                )
              ],
            ),
          ),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const CardPaymentScreen();
              }));
            },
            child: const Tiles(
                leading: 'assets/cards.png',
                title: 'Credit Card',
                trailing: Icons.arrow_forward_ios),
          ),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/bitcoin-refresh.png',
              title: 'Crypto Currency',
              trailing: Icons.arrow_forward_ios),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/strongbox.png',
              title: 'Bank Transfer',
              trailing: Icons.arrow_forward_ios),
          const Divider(
            color: Color.fromRGBO(240, 237, 237, 1),
          ),
          const Tiles(
              leading: 'assets/paypal.png',
              title: 'Credit Card',
              trailing: Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

class Tiles extends StatelessWidget {
  final String leading;
  final String title;
  final IconData trailing;

  const Tiles(
      {Key? key,
      required this.leading,
      required this.title,
      required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Row(
          children: [
            Image.asset(
              leading,
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 5),
            Text(title,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(23, 25, 28, 1))),
            const Spacer(),
            Icon(trailing),
          ],
        ),
      ),
    );
  }
}
