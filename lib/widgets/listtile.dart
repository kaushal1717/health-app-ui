import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts/colors.dart';

class CustomTile extends StatelessWidget {
  void Function() onTap;
  Color? color, iconColor;
  IconData? icon;
  String name;
  CustomTile(
      {super.key,
      required this.onTap,
      required this.color,
      required this.iconColor,
      required this.icon,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 25,
          ),
        ),
        title: Text(
          name,
          style: GoogleFonts.notoSans(
              color: AppColors.fontColor,
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
