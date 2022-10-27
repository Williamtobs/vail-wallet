import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button.dart';

class SendMoneyDetails extends StatelessWidget {
  final String name, amount;
  final String address;

  const SendMoneyDetails(
      {Key? key,
      required this.name,
      required this.address,
      required this.amount})
      : super(key: key);

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
          'Send Money',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          children: [
            Expanded(
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromRGBO(218, 218, 218, 1)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
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
                                            image: AssetImage(
                                                'assets/profile.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        name,
                                        style: GoogleFonts.mulish(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(
                                                47, 57, 78, 1)),
                                      ),
                                      Text(
                                        address,
                                        style: GoogleFonts.mulish(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color.fromRGBO(218, 218, 218, 1),
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'From',
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(41, 45, 50, 1)),
                            ),
                            Text(
                              'Amount',
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(41, 45, 50, 1)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nkwuda Victor',
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(47, 57, 78, 1)),
                            ),
                            Text(
                              amount,
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(47, 57, 78, 1)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: Color.fromRGBO(218, 218, 218, 1),
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'County',
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(41, 45, 50, 1)),
                            ),
                            Text(
                              'Currency',
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(41, 45, 50, 1)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'United State',
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(47, 57, 78, 1)),
                            ),
                            Text(
                              'EUR',
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(47, 57, 78, 1)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: Color.fromRGBO(218, 218, 218, 1),
                          thickness: 1,
                        ),
                        Text(
                          'Note',
                          style: GoogleFonts.mulish(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(41, 45, 50, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'What is it for ',
                          style: GoogleFonts.mulish(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(234, 86, 12, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: Color.fromRGBO(218, 218, 218, 1),
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Network Fee',
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(41, 45, 50, 1)),
                            ),
                            Text(
                              ' € 0.23',
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(41, 45, 50, 1)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
                text: 'Send Money',
                action: () {
                  //UserForm
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return const CryptoScreen();
                  //   //return const DashBoard();
                  // }));
                })
          ],
        ),
      ),
    );
  }
}
