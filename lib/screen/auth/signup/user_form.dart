import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button.dart';
import '../../widgets/input_field.dart';
import 'authen_form.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  TextEditingController firstName = TextEditingController();

  TextEditingController lastName = TextEditingController();

  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
              right: 10.0, top: 20, left: 10.0, bottom: 30.0),
          child: Column(
      children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text('Sign Up',
                      style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Card(
                      child: Image.asset(
                        'assets/vail_logo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                  'Submit your legal first name, last '
                  '\nname and lastly your country and currency ',
                  style: GoogleFonts.mulish(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              const SizedBox(height: 20),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('First Name',
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      const SizedBox(height: 2),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: InputField(
                          text: 'Your First Name',
                          controller: firstName,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Last Name',
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      const SizedBox(height: 2),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: InputField(
                          text: 'Your Last Name',
                          controller: lastName,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Country',
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              InkWell(
                onTap: () {
                  showCurrencyPicker(
                    context: context,
                    showFlag: true,
                    showSearchField: false,
                    showCurrencyName: true,
                    showCurrencyCode: true,
                    onSelect: (Currency currency) {
                      setState(() {
                        country = currency.name;
                      });
                    },
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(189, 189, 189, 1))),
                  child: Row(
                    children: [
                      Text(
                        country ?? 'Chose country & currency',
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.expand_more,
                      )
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
            text: 'Continue',
            action: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AuthenticationForm();
              }));
            },
          ),
          const SizedBox(
            height: 20,
          ),
      ],
    ),
        ));
  }
}
