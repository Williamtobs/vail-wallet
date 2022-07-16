import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/input_field.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  final TextEditingController name = TextEditingController();
  final TextEditingController cardNumber = TextEditingController();
  final TextEditingController expiry = TextEditingController();
  final TextEditingController cvv = TextEditingController();
  String? type;

  List<DropdownMenuItem<String>> cards = [
    const DropdownMenuItem(
      child: Text(
        'Visa',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      value: 'Visa',
    ),
    const DropdownMenuItem(
      child: Text(
        'Master Card',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      value: 'Master Card',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(234, 86, 12, 1),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Add New Card',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(
                        color: const Color.fromRGBO(218, 218, 218, 1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/wallet_new.svg'),
                    Text('All Credit Cards',
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    const Icon(Icons.expand_circle_down_outlined, size: 30,)
                  ],
                )),
            const SizedBox(height: 20),
            Text('Cardholder Name',
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            const SizedBox(height: 2),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: InputField(
                text: 'John Doe',
                controller: name,
                  otherScreen: true,
              ),
            ),
            const SizedBox(height: 10),
            Text('Card Number',
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            const SizedBox(height: 2),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: InputField(
                text: 'XXXX XXXX XXXX XXXX',
                controller: cardNumber,
                otherScreen: true,
              ),
            ),
            const SizedBox(height: 10),
            Text('Card Type',
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            const SizedBox(height: 2),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: const Color.fromRGBO(189, 189, 189, 1), width: 1)),
                child: DropdownButton<String>(
                    underline: const SizedBox(),
                    value: type,
                    isExpanded: true,
                    hint: Text(
                      'Choose one',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    items: cards,
                    onChanged: (value) {
                      setState(() {
                        type = value!;
                      });
                    })),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiry',
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                      const SizedBox(height: 2),
                      InputField(
                        text: 'MM/YY',
                        controller: expiry,
                        otherScreen: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVV',
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                      const SizedBox(height: 2),
                      InputField(
                        text: 'XXX',
                        controller: cvv,
                        keyboardType: TextInputType.text,
                        otherScreen: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
