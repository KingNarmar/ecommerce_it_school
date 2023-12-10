import 'package:flutter/material.dart';

class SummerSalesSection extends StatelessWidget {
  const SummerSalesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.019704433,
      ),
      Container(
        height: MediaQuery.sizeOf(context).height * 0.123152709,
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: const Color(0xFFDB3022),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SUMMER SALES',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Up to 50% off',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
