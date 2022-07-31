import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MySavings extends StatelessWidget {
  const MySavings({Key? key}) : super(key: key);

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
          'My Savings',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            SavingCard(
              savingsName: 'House Rent',
              amount: '500',
              months: '5',
              percentage: '30 %',
              progress: 0.6,
              balance: '10.70',
            ),
            SavingCard(
              savingsName: 'Chika School Fees',
              amount: '300',
              months: '3',
              percentage: '4 %',
              progress: 0.3,
              balance: '1.70',
            )
          ],
        ),
      ),
    );
  }
}

class SavingCard extends StatelessWidget {
  final String savingsName, amount, months, percentage, balance;
  final double progress;

  const SavingCard(
      {Key? key,
      required this.savingsName,
      required this.amount,
      required this.months,
      required this.percentage,
      required this.progress,
      required this.balance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color.fromRGBO(218, 218, 218, 1))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                savingsName,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
              Text(
                '+ USD $amount',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: const Color.fromRGBO(0, 154, 70, 1)),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(234, 86, 12, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    percentage,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ),
              ),
              Column(
                children: [
                  Text('\$$balance',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700, fontSize: 24)),
                  const SizedBox(height: 4),
                  Text('Savings Balance',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700, fontSize: 10))
                ],
              ),
              Row(
                children: [
                  Text(
                    'Today',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const Icon(Icons.expand_more)
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'In Progress',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600, fontSize: 12),
              ),
              Text(
                '$months months',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: const Color.fromRGBO(246, 111, 71, 1),
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromRGBO(189, 189, 189, 1)),
            ),
            child: LinearPercentIndicator(
              lineHeight: 30,
              padding: const EdgeInsets.all(0),
              progressColor: const Color.fromRGBO(0, 154, 70, 1),
              percent: progress,
              //width: MediaQuery.of(context).size.width,
              barRadius: Radius.zero,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Money will be sent to your withdrawable Balance on completion',
            textAlign: TextAlign.center,
            style:
                GoogleFonts.mulish(fontWeight: FontWeight.w400, fontSize: 12),
          )
        ],
      ),
    );
  }
}
