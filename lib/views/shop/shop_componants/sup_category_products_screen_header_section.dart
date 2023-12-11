import 'package:flutter/material.dart';

import '../../../models/sup_category_model.dart';
import '../../../shared/constants/constants.dart';

class SupCategoryProductsScreenHeaderSection extends StatelessWidget {
  const SupCategoryProductsScreenHeaderSection(
      {super.key, required this.supCategoryModel});
  final SupCategoryModel supCategoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Women’s ${supCategoryModel.name.toString()}',
          style: const TextStyle(
            color: Color(0xFF222222),
            fontSize: 34,
            fontFamily: metropolisFontFamiely,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.014778325,
        ),
      ],
    );
  }
}
