import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/input_field.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController house = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: GoogleFonts.nunito(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(234, 86, 12, 1)),
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 10),
            child: Text(
              'Done',
              style: GoogleFonts.nunito(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(234, 86, 12, 1)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 40,
              ),
            ),
            const SizedBox(height: 10),
            Text('Set New Photo',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(234, 86, 12, 1))),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Legal Name', style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: InputField(
                text: '',
                controller: name,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Phone Number', style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: InputField(
                text: '',
                controller: phone,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Email Address', style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: InputField(
                text: '',
                controller: email,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('House Address', style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: InputField(
                text: '',
                controller: house,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
