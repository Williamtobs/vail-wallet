import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? action;
  const Button({Key? key, required this.text, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(234, 86, 12, 1),
          borderRadius: BorderRadius.circular(15)),
      child: TextButton(
        onPressed: action,
        child: Text(
          text,
          style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
    );
  }
}
