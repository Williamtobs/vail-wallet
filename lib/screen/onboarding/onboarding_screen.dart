import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vail_wallet/screen/onboarding/pages.dart';

import '../auth/signup/signup_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController(initialPage: 0);

  int pageNo = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  nextSlide() {
    controller.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  prevSlide() {
    controller.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    prevSlide();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 20),
                    child: pageNo != 0
                        ? const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                          )
                        : Container(),
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.60,
                        child: PageView(
                          onPageChanged: (index) {
                            setState(() {
                              pageNo = index;
                            });
                          },
                          controller: controller,
                          children: const [
                            Screens(
                              image: 'assets/Saly1.png',
                              title: 'Easy Payments',
                              description:
                                  'No restrictions in sending and receiving payments from '
                                  'friends and family globally',
                            ),
                            Screens(
                              image: 'assets/Saly2.png',
                              title: 'Currency Exchange',
                              description:
                                  'Accept , send and recieve payment in  any '
                                  'currency of your choice in seconds, ',
                            ),
                            Screens(
                              image: 'assets/Saly3.png',
                              title: 'Save Money',
                              description:
                                  'With Vail Wallet you have acces to save percent '
                                  'of your incoming deposit automatically ',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: CustomizableEffect(
                          spacing: 4,
                          dotDecoration: DotDecoration(
                            color: Colors.black,
                            width: 7,
                            height: 7,
                            rotationAngle: 180,
                            verticalOffset: -10,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          activeDotDecoration: DotDecoration(
                              width: 24,
                              height: 6,
                              rotationAngle: 180,
                              verticalOffset: -10,
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.black)),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 46,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(234, 86, 12, 1),
                  borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                onPressed: () {
                  if (pageNo != 2) {
                    nextSlide();
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Signup();
                    }));
                  }
                },
                child: Text(
                  pageNo != 2 ? 'Next' : 'Create Account',
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            pageNo == 2
                ? Container(
                    height: 46,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromRGBO(234, 86, 12, 1),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(234, 86, 12, 1),
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
