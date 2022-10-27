import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Currency extends StatelessWidget {
  Currency({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset('assets/usa_flag.png', height: 40, width: 40),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'USD',
                    style: GoogleFonts.mulish(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(41, 45, 50, 1)),
                  )
                ],
              ),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: '0.00',
                    hintStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(41, 45, 50, 1))),
              ),
            ],
          ),
          const Divider(
            color: Color.fromRGBO(217, 217, 217, 1),
            thickness: 1,
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset('assets/bitcoin_image.png',
                      height: 40, width: 40),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'USD',
                    style: GoogleFonts.mulish(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(41, 45, 50, 1)),
                  )
                ],
              ),
              TextField(
                controller: _controller2,
                decoration: const InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: '0.00',
                    hintStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(41, 45, 50, 1))),
              ),
            ],
          ),
          Container(
            height: 62,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(218, 218, 218, 1),
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    '07/08/2022 11:39 PM',
                    style: GoogleFonts.mulish(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(234, 86, 12, 1)),
                  ),
                  Text(
                    '1 BTC = 23,310.02 USD',
                    style: GoogleFonts.mulish(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(41, 45, 50, 1)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
