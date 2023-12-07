import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.labelText,
  });
  final String? labelText;
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
          labelText: labelText,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
