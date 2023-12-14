import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class Catalog1TopListItem extends StatelessWidget {
  const Catalog1TopListItem({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.036945813,
        width: MediaQuery.sizeOf(context).width * 0.266666667,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29),
          ),
          color: const Color(0xFF222222),
        ),
        child: Center(
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: metropolisFontFamiely,
              fontWeight: FontWeight.w500,
              height: 0.10,
            ),
          ),
        ),
      ),
    );
  }
}
