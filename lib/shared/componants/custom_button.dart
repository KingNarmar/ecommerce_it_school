import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.child,
    this.color = const Color(0xFFDB3022),
    this.side = BorderSide.none,
    this.onTap,
    this.width = double.infinity,
    this.textColor = Colors.white,
    required this.height,
  });
  final String child;
  final Color? color;
  final BorderSide side;
  final void Function()? onTap;
  final double width;
  final Color? textColor;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), side: side),
          color: color,
        ),
        child: Center(
          child: Text(
            child,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontFamily: metropolisFontFamiely,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
