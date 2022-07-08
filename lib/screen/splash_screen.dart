import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth/login/login_pin.dart';
import 'onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 8),
            () => Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return const LoginWithPin();
          },
        )));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 120,
              width: 270,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/vail.png'),
                  fit: BoxFit.fill
                )
              ),
            ),
          ),
          //Image.asset('assets/vail.png'),
          Center(
            child: Text('Mobile and online payment system', style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),),
          )
        ],
      ),
    );
  }
}
