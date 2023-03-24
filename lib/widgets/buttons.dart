import 'package:flutter/material.dart';
import '../consts/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onpressed;
  Widget child;
  Color? color;
  double height, width;
  double borderRadius;
  CustomButton({
    super.key,
    required this.onpressed,
    required this.child,
    this.color = AppColors.primColor,
    this.width = 120,
    this.height = 45,
    this.borderRadius = 13,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      child: child,
      height: height,
      minWidth: width,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
    );
  }
}
