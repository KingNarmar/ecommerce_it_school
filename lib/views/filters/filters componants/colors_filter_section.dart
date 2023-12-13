import 'package:ecommerce_it_school/models/color_filter_model.dart';
import 'package:ecommerce_it_school/views/filters/filters%20componants/colors_filter_item.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

class ColorsFilterSection extends StatelessWidget {
  const ColorsFilterSection({
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
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.051724138,
          decoration: const BoxDecoration(
            color: Color(0xFFF9F9F9),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Colors',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 16,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.014778325,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.123152709,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ColorFilterModel.colorsList.length,
                itemBuilder: (context, index) {
                  return ColorsFilterItem(
                    colorFilterModel: ColorFilterModel.colorsList[index],
                  );
                },
              )),
        ),
      ],
    );
  }
}
