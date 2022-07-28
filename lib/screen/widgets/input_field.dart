import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? otherScreen;
  final bool? obscureText;
  final String text;
  final bool trailing;
  final IconData? icon;

  const InputField(
      {Key? key,
      required this.controller,
      this.keyboardType,
      required this.text,
      this.obscureText,
      this.otherScreen, this.trailing = false, this.icon})
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
        suffixIcon: trailing? Icon(icon, size: 30,) : null,
        filled: false,
        border: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromRGBO(189, 189, 189, 1), width: 1),
            borderRadius: otherScreen == true
                ? BorderRadius.circular(15)
                : BorderRadius.zero),
        focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromRGBO(189, 189, 189, 1), width: 1),
            borderRadius: otherScreen == true
                ? BorderRadius.circular(15)
                : BorderRadius.zero),
        enabledBorder:  OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromRGBO(189, 189, 189, 1), width: 1),
            borderRadius: otherScreen == true
                ? BorderRadius.circular(15)
                : BorderRadius.zero),
        hintText: text,
        hintStyle:
            GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
        isDense: true,
        contentPadding: const EdgeInsets.all(15.0),
      ),
    );
  }
}
