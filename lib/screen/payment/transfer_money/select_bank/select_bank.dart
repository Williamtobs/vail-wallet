import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../add_money/credit_card/card_payment.dart';
import '../../../widgets/button.dart';
import '../amount/amount_field.dart';

class SelectBank extends StatelessWidget {
  const SelectBank({Key? key}) : super(key: key);

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
          'Bank Transfer',
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
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.70,
                        child: Text('Select a valid recipient Bank Name below',
                            style: GoogleFonts.mulish(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                      ),
                      const Spacer(),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: Card(
                          child: Image.asset(
                            'assets/vail_logo.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  const SelectedCard(),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Button(
              text: 'Next',
              action: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const InsertAmount();
                }));
              },
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
