import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class ProductsHeader extends StatelessWidget {
  const ProductsHeader({
    super.key,
    required this.headerName,
    required this.headerSubTitle,
  });
  final String headerName;
  final String headerSubTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headerName,
              style: const TextStyle(
                color: Color(0xFF222222),
                fontSize: 34,
                fontFamily: metropolisFontFamiely,
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const Text(
              'View all',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 11,
                fontFamily: metropolisFontFamiely,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.004926108,
        ),
        Text(
          headerSubTitle,
          style: const TextStyle(
            color: Color(0xFF9B9B9B),
            fontSize: 11,
            fontFamily: metropolisFontFamiely,
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.027093596,
        ),
      ],
    );
  }
}
