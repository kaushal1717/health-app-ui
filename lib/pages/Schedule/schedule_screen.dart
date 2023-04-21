import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthapp/consts/colors.dart';
import 'package:healthapp/pages/Schedule/cancelled_schedule.dart';
import 'package:healthapp/pages/Schedule/completed_schedule.dart';
import 'package:healthapp/pages/Schedule/upcoming_schedule.dart';
import 'package:healthapp/widgets/scheule_buttons.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  int _buttonIndex = 0;
  final _pageWidgets = [
    Upcoming(),
    Completed(),
    Cancelled(),
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Schedule',
              style:
                  GoogleFonts.ubuntu(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 55),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F6FA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScheduleButtons(
                  name: 'Upcoming',
                  onTap: () {
                    setState(() {
                      _buttonIndex = 0;
                    });
                  },
                  color: _buttonIndex == 0
                      ? AppColors.primColor
                      : Colors.transparent,
                ),
                ScheduleButtons(
                  name: 'Completed',
                  onTap: () {
                    setState(() {
                      _buttonIndex = 1;
                    });
                  },
                  color: _buttonIndex == 1
                      ? AppColors.primColor
                      : Colors.transparent,
                ),
                ScheduleButtons(
                  name: 'Cancelled',
                  onTap: () {
                    setState(() {
                      _buttonIndex = 2;
                    });
                  },
                  color: _buttonIndex == 2
                      ? AppColors.primColor
                      : Colors.transparent,
                ),
              ],
            ),
          ),
          _pageWidgets[_buttonIndex],
        ]),
      ),
    );
  }
}
