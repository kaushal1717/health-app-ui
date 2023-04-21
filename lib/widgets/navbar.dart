import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../consts/colors.dart';
import '../pages/home/home_screen.dart';
import '../pages/Message/msg_screen.dart';
import '../pages/Schedule/schedule_screen.dart';
import '../pages/Settings/settings_screen.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _index = 0;
  final _screens = [
    const HomePage(),
    MsgPage(),
    const SchedulePage(),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_index],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primColor,
          unselectedItemColor: AppColors.fontColor,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_fill), label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Schedule'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
