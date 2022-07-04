import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screens extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const Screens(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 237.42,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
              fontSize: 14, fontWeight: FontWeight.w400, height: 2),
        ),
      ],
    );
  }
}
