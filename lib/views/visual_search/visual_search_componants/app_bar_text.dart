import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Visual search",
      style: TextStyle(
        color: Color(0xFF222222),
        fontSize: 18,
        fontFamily: metropolisFontFamiely,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
