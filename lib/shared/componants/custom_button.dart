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
  });
  final String child;
  final Color? color;
  final BorderSide side;
  final void Function()? onTap;
  final double width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: MediaQuery.sizeOf(context).height * 0.0591133,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), side: side),
          color: color,
        ),
        child: Center(
          child: Text(
            child,
            style: const TextStyle(
              color: Colors.white,
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
