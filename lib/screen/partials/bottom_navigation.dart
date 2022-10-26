import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vail_wallet/screen/home/dashboard.dart';

import '../nav/receive_money/receive_money_option.dart';
import '../nav/send_money/send_money.dart';

class BottomCustomNavigation extends StatefulWidget {
  const BottomCustomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomCustomNavigation> createState() => _BottomCustomNavigationState();
}

class _BottomCustomNavigationState extends State<BottomCustomNavigation> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const DashBoard(),
    SendMoneyScreen(),
    const Icon(
      Icons.camera,
      size: 150,
    ),
    const MoneyOption(),
    SendMoneyScreen(title: 'Request Money',)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 0.5
            )
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: selectedIndex,
            selectedIconTheme: const IconThemeData(
              color: Color.fromRGBO(234, 86, 12, 1),
            ),
            showSelectedLabels: true,
            elevation: 1,
            showUnselectedLabels: true,
            selectedItemColor: const Color.fromRGBO(234, 86, 12, 1),
            unselectedItemColor: Colors.black,
            onTap: _onItemTapped,
            unselectedLabelStyle:
                GoogleFonts.nunito(fontSize: 13, fontWeight: FontWeight.w600),
            selectedLabelStyle:
                GoogleFonts.nunito(fontSize: 13, fontWeight: FontWeight.w700),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: selectedIndex != 0
                    ? Image.asset('assets/home.png')
                    : Image.asset('assets/home2.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: selectedIndex != 1
                    ? Image.asset('assets/money-send.png')
                    : Image.asset('assets/money-send-color.png'),
                label: 'Send',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/exchange.png'),
                label: 'Currency',
              ),
              BottomNavigationBarItem(
                icon: selectedIndex != 3
                    ? Image.asset('assets/money-receive.png')
                    : Image.asset('assets/money-receive-color.png'),
                label: 'Receive',
              ),
              BottomNavigationBarItem(
                icon: selectedIndex != 4
                    ? Image.asset('assets/login.png')
                    : Image.asset('assets/login-color.png'),
                label: 'Request',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
