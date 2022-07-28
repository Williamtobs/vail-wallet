import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vail_wallet/screen/profile/security/security_setting.dart';

import 'account/account_setting.dart';
import 'currency/currency_choose.dart';
import 'edit_profile/edit_profile.dart';
import 'notification/notification_setting.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(Icons.close,
              size: 32, color: Color.fromRGBO(82, 83, 109, 1)),
        ),
        centerTitle: true,
        title: Text(
          'Profile',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        actions: [Image.asset('assets/home/scan.png')],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 22,
              ),
              title: Text('Nkwuda Victor',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700, fontSize: 10)),
              subtitle: Text('VW-@-XXX-XXX',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 12)),
              trailing: Image.asset('assets/copy.png'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                children: [
                  Text('Available Balance',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700, fontSize: 12)
                  ),
                  const Spacer(),
                  Text('\$ 1,000',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700, fontSize: 12)
                  ),
                ],
              )
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Text('Money Transfer sent to this bank account number will '
                  'automatically top up your Vail Wallet. Receive your salary or '
                  'funds from any bank account locally, direct into your '
                  'Vail Wallet',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500, fontSize: 10)
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: Text('Account Number',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700, fontSize: 10)),
              subtitle: Text('0387834544',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 12)),
              trailing: Image.asset('assets/copy.png'),
            ),
            ListTile(
              title: Text('Bank Name',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700, fontSize: 10)),
              subtitle: Text('Wema Bank ',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 12)),
              trailing: Image.asset('assets/copy.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Text('Share Bank Details', style: GoogleFonts.nunito(
                color: const Color.fromRGBO(234, 86, 12, 1),
                  fontWeight: FontWeight.w700, fontSize: 12)),
            ),
            const SizedBox(height: 20),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return EditProfile();
                  }));
                },
                child: const OptionList(title: 'Profile', subtitle: 'Edit your profile details')),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const AccountSetting();
                  }));
                },
                child: const OptionList(title: 'Account', subtitle: 'Limitation Features')),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return NativeCurrency();
                  }));
                },
                child: const OptionList(title: 'Native Currency', subtitle: 'Set country and currency')),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const NotificationSetting();
                  }));
                },
                child: const OptionList(title: 'Notification', subtitle: 'Customize notification')),
            InkWell(
                onTap: (){
                  //SecuritySetting
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const SecuritySetting();
                  }));
                },
                child: const OptionList(title: 'Security', subtitle: 'Safeguard your account')),
            const OptionList(title: 'Invite Friends', subtitle: 'Earn 5 USD per invite'),
            const OptionList(title: 'Feedback', subtitle: 'Rate Vail Wallet  App'),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10, bottom: 20),
              child: Text('Sign Out', style: GoogleFonts.nunito(
                  color: const Color.fromRGBO(234, 86, 12, 1),
                  fontWeight: FontWeight.w700, fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}


class OptionList extends StatelessWidget {
  final String title, subtitle;

  const OptionList({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 60,
      //padding: EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(
              color: Color.fromRGBO(218, 218, 218, 1)
          ))),
      child: ListTile(
        title: Text(title,
            style: GoogleFonts.mulish(
              fontWeight: FontWeight.w700,
              fontSize: 10,
            )),
        subtitle: Text(subtitle,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            )),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
