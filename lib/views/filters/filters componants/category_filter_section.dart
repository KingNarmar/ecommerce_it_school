import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

import '../../../shared/constants/constants.dart';

class CategoryFilterSection extends StatelessWidget {
  const CategoryFilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.04679803,
        ),
        Container(
          decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.051724138,
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Category',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 16,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.02955665,
        ),
        GroupButton(
          options: GroupButtonOptions(
              borderRadius: BorderRadius.circular(8),
              unselectedBorderColor: const Color(0xFF9B9B9B),
              selectedColor: const Color(0xFFDB3022),
              buttonHeight: MediaQuery.sizeOf(context).height * 0.049261084,
              buttonWidth: MediaQuery.sizeOf(context).width * 0.266666667,
              mainGroupAlignment: MainGroupAlignment.start),
          buttons: const ["All", "Women", "Men", "Boys", "Girls"],
        )
      ],
    );
  }
}
