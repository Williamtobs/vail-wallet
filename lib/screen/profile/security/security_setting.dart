import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class SecuritySetting extends StatefulWidget {
  const SecuritySetting({Key? key}) : super(key: key);

  @override
  State<SecuritySetting> createState() => _SecuritySettingState();
}

class _SecuritySettingState extends State<SecuritySetting> {
  bool value1 = true;
  bool value2 = true;
  bool value3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, right: 4.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios,
                    color: Color.fromRGBO(234, 86, 12, 1)),
                Text(
                  'Back',
                  style: GoogleFonts.mulish(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(234, 86, 12, 1)),
                )
              ],
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Security Settings',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          PageTile(
              title: 'Hide Balance',
              subtitle: 'Hide your balance on your home screen',
              value: value1,
              onToggle: (val) {
                setState(() {
                  value1 = val;
                });
              }),
          PageTile(
              title: 'Enable Security Lock',
              subtitle: 'Will require your pin when yu clise app',
              value: value2,
              onToggle: (val) {
                setState(() {
                  value2 = val;
                });
              }),
          PageTile(
              title: 'Enable Security Lock',
              subtitle: 'Use touch ID or pin to unlock your app',
              value: value3,
              onToggle: (val) {
                setState(() {
                  value3 = val;
                });
              }),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(218, 218, 218, 1)))),
            child: ListTile(
              leading: Text('Change Vail Wallet Pin', style: GoogleFonts.mulish(
                fontWeight: FontWeight.w700,
                fontSize: 14,
              )),
              trailing: const Icon(Icons.arrow_forward_ios, size: 28,),
            ),
          )
        ],
      ),
    );
  }
}

class PageTile extends StatelessWidget {
  final String title, subtitle;
  final bool value;
  final void Function(bool) onToggle;

  const PageTile(
      {Key? key,
      required this.title,
      required this.value,
      required this.onToggle,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromRGBO(218, 218, 218, 1)))),
      child: ListTile(
        title: Row(
          children: [
            Text(title,
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                )),
            const Spacer(),
            FlutterSwitch(
              width: 60,
              height: 30,
              activeColor: const Color.fromRGBO(234, 86, 12, 1),
              value: value,
              onToggle: onToggle,
            ),
          ],
        ),
        subtitle: Text(subtitle,
            style: GoogleFonts.mulish(
              fontWeight: FontWeight.w500,
              fontSize: 10,
            )),
      ),
    );
  }
}
