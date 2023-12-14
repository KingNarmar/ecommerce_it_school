import 'package:flutter/material.dart';

import '../../../models/categories2_model.dart';
import '../../../shared/constants/constants.dart';

class Catalog1ScreenHeaderSection extends StatelessWidget {
  const Catalog1ScreenHeaderSection(
      {super.key, required this.supCategoryModel});
  final Categories2Model supCategoryModel;
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
