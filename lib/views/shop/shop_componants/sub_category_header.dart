import 'package:flutter/material.dart';

import '../../../shared/componants/custom_button.dart';
import '../../../shared/constants/constants.dart';

class SubCategoryHeader extends StatelessWidget {
  const SubCategoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomButton(child: "VIEW ALL ITEMS"),
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