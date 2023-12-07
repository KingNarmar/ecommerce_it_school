import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
  });
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const ShapeDecoration(shape: RoundedRectangleBorder(), shadows: [
        BoxShadow(
          color: Color(0x0C000000),
          blurRadius: 8,
          offset: Offset(0, 1),
          spreadRadius: 0,
        )
      ]),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
