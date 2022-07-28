import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
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
          'Notification Settings',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          PageTile(
              title: 'Push Notification',
              value: value1,
              onToggle: (val) {
                setState(() {
                  value1 = val;
                });
              }),
          PageTile(
              title: 'SMS Notification',
              value: value2,
              onToggle: (val) {
                setState(() {
                  value2 = val;
                });
              }),
          PageTile(
              title: 'Email Notification',
              value: value3,
              onToggle: (val) {
                setState(() {
                  value3 = val;
                });
              }),
        ],
      ),
    );
  }
}

class PageTile extends StatelessWidget {
  final String title;
  final bool value;
  final void Function(bool) onToggle;

  const PageTile(
      {Key? key,
        required this.title,
        required this.value,
        required this.onToggle})
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
      ),
    );
  }
}
