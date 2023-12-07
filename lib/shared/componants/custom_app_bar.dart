import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.text,
  });
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        color: Color(0xFF222222),
        fontSize: 34,
        fontFamily: 'Metropolis',
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
