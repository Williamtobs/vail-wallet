import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vail_wallet/screen/home/dashboard.dart';

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
    const Icon(
      Icons.call,
      size: 150,
    ),
    const Icon(
      Icons.camera,
      size: 150,
    ),
    const Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Image.asset('assets/dashboard_send.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
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
                    : Image.asset('assets/home_color.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: selectedIndex != 1
                    ? Image.asset('assets/money-send.png')
                    : Image.asset('assets/money-send-color.png'),
                label: 'Send',
              ),
              BottomNavigationBarItem(
                icon: selectedIndex != 2
                    ? Image.asset('assets/money-receive.png')
                    : Image.asset('assets/money-receive-color.png'),
                label: 'Receive',
              ),
              BottomNavigationBarItem(
                icon: selectedIndex != 3
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
