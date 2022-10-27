import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectReceiver extends StatelessWidget {
  const SelectReceiver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List history = [
      {'name': 'Nkwuda Victor ', 'address': 'VW@nkwuda234'},
      {'name': 'Nkwuda Victor ', 'address': 'VW@nkwuda234'},
      {'name': 'Nkwuda Victor ', 'address': 'VW@nkwuda234'}
    ];
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
          'Wallet Address',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 53,
            width: MediaQuery.of(context).size.width,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(234, 86, 12, 0.15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search by VW@XXXXXXX',
                    style: GoogleFonts.mulish(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  Image.asset(
                    'assets/home/scan.png',
                    height: 25,
                    width: 25,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Text(
              'Recent Transfer',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(41, 45, 50, 1)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
              itemCount: history.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: EachHist(
                      name: history[index]['name'],
                      address: history[index]['address']),
                );
              })
        ],
      ),
    );
  }
}

class EachHist extends StatelessWidget {
  final String name, address;

  const EachHist({Key? key, required this.name, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/profile.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.mulish(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(47, 57, 78, 1)),
                  ),
                  Text(
                    address,
                    style: GoogleFonts.mulish(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
