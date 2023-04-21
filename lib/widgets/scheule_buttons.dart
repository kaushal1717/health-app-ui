import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleButtons extends StatelessWidget {
  final String name;
  final void Function() onTap;
  final Color color;
  const ScheduleButtons(
      {super.key,
      required this.name,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          name,
          style:
              GoogleFonts.notoSerif(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
