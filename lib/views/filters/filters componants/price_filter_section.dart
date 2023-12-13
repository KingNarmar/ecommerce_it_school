import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

class PriceFilterSction extends StatefulWidget {
  const PriceFilterSction({super.key});

  @override
  State<PriceFilterSction> createState() => _PriceFilterSctionState();
}

class _PriceFilterSctionState extends State<PriceFilterSction> {
  double start = 0;
  double end = 100;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: double.infinity,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(),
          color: Color(0xFFF9F9F9),
        ),
        height: MediaQuery.sizeOf(context).height * 0.051724138,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Price range',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 16,
                fontFamily: metropolisFontFamiely,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${start.toInt()}',
                    style: const TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '\$${end.toInt()}',
                    style: const TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            RangeSlider(
              activeColor: const Color(0xFFDB3022),
              inactiveColor: const Color(0xFF9B9B9B),
              divisions: 1000,
              min: 0,
              max: 1000,
              labels: const RangeLabels("Min Price", "Max Price"),
              values: RangeValues(start, end),
              onChanged: (value) {
                setState(() {
                  start = value.start;
                  end = value.end;
                });
              },
            )
          ],
        ),
      ),
    ]);
  }
}
