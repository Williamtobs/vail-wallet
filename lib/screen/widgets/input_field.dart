import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String text;

  const InputField(
      {Key? key,
      required this.controller,
      this.keyboardType,
      required this.text,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      //showCursor: true,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        filled: false,
        border: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromRGBO(189, 189, 189, 1), width: 1),
            borderRadius: BorderRadius.zero),
        focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromRGBO(189, 189, 189, 1), width: 1),
            borderRadius: BorderRadius.zero),
        enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromRGBO(189, 189, 189, 1), width: 1),
            borderRadius: BorderRadius.zero),
        hintText: text,
        hintStyle:
            GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
        isDense: true,
        contentPadding: const EdgeInsets.all(15.0),
      ),
    );
  }
}
