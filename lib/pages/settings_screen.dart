import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthapp/consts/colors.dart';
import 'package:healthapp/widgets/listtile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Settings',
                style: GoogleFonts.ubuntu(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/person-2.jpeg'),
              ),
              title: Text(
                'Username',
                style: GoogleFonts.notoSerif(
                    color: AppColors.fontColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              subtitle: Text('Profile'),
            ),
            Divider(
              height: 50,
              thickness: 1,
            ),
            CustomTile(
                onTap: () {},
                color: Colors.orange.shade100,
                iconColor: Colors.orange,
                icon: CupertinoIcons.person,
                name: 'Profile'),
            CustomTile(
                onTap: () {},
                color: Colors.indigo.shade100,
                iconColor: Colors.indigo,
                icon: Icons.notifications_none_outlined,
                name: 'Notification'),
            CustomTile(
                onTap: () {},
                color: Colors.blue.shade100,
                iconColor: Colors.blue,
                icon: Icons.privacy_tip_outlined,
                name: 'privacy'),
            CustomTile(
                onTap: () {},
                color: Colors.green.shade100,
                iconColor: Colors.green,
                icon: Icons.settings_suggest_outlined,
                name: 'General'),
            CustomTile(
                onTap: () {},
                color: Colors.cyan.shade100,
                iconColor: Colors.cyan,
                icon: Icons.info_outline_rounded,
                name: 'About us'),
            Divider(
              height: 40,
              thickness: 1,
            ),
            CustomTile(
                onTap: () {},
                color: Colors.red.shade100,
                iconColor: Colors.redAccent,
                icon: Icons.logout,
                name: 'Log out')
          ],
        ),
      ),
    );
  }
}
