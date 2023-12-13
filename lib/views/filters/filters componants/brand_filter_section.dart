import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

class BrandFilterSection extends StatelessWidget {
  const BrandFilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.02955665,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.071428571,
          decoration: const BoxDecoration(
            color: Color(0xFFF9F9F9),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brand',
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 16,
                          fontFamily: metropolisFontFamiely,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'adidas Originals, Jack & Jones, s.Oliver',
                        style: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 11,
                          fontFamily: metropolisFontFamiely,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
                ]),
          ),
        ),
      ],
    );
  }
}
