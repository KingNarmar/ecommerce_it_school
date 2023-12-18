import 'package:ecommerce_it_school/shared/methods/methods.dart';
import 'package:flutter/material.dart';

import '../../../shared/componants/custom_button.dart';
import '../../../shared/constants/constants.dart';

class Categories2Header extends StatelessWidget {
  const Categories2Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomButton(
              child: "VIEW ALL ITEMS", height: mediaHeight(context, 0.0591133)),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.019704433,
          ),
          const Text(
            'Choose category',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF9B9B9B),
              fontSize: 14,
              fontFamily: metropolisFontFamiely,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.039408867,
          ),
        ],
      ),
    );
  }
}
