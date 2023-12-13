import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

import '../../../shared/constants/constants.dart';

class SizeFilterSection extends StatelessWidget {
  const SizeFilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.017241379,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF9F9F9),
          ),
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.051724138,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sizes',
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
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.014778325,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GroupButton(
            options: GroupButtonOptions(
                borderRadius: BorderRadius.circular(8),
                selectedColor: const Color(0xFFDB3022),
                unselectedBorderColor: const Color(0xFF9B9B9B),
                buttonHeight: MediaQuery.sizeOf(context).height * 0.049261084,
                buttonWidth: MediaQuery.sizeOf(context).width * 0.106666667,
                spacing: MediaQuery.sizeOf(context).width * 0.042666667),
            buttons: const ["XS", "S", "M", "L", "XL"],
          ),
        ),
      ],
    );
  }
}
