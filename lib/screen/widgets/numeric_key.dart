import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:otp_text_field/otp_field.dart';

class NumericKey extends StatefulWidget {
  final OtpFieldController pin;
  String text;
  NumericKey({Key? key, required this.pin, required this.text}) : super(key: key);

  @override
  State<NumericKey> createState() => _NumericKeyState();
}

class _NumericKeyState extends State<NumericKey> {
  int position = 0;

  @override
  Widget build(BuildContext context) {
    _onKeyboardTap(String value) {
      setState(() {
        if (position < 4) {
          widget.pin.setValue(value, position);
          widget.text = widget.text  + value;
          position += 1;
        }
      });
    }

    return NumericKeyboard(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      onKeyboardTap: _onKeyboardTap,
      textColor: Colors.black,
      leftButtonFn: (){
       Navigator.pop(context);
      },
      rightButtonFn: () {
        setState(() {
          widget.pin.clear();
          position = 0;
          //phone.text = phone.text.substring(0, phone.text.length - 1);
          //text = text!.substring(0, text!.length - 1);
        });
      },
      leftIcon: const Icon(Icons.logout, color: Colors.black),
      rightIcon: const Icon(
        Icons.backspace,
        color: Colors.black,
      ),
    );
  }
}
