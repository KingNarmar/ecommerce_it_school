import 'package:ecommerce_it_school/models/sup_category_model.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

class SubCategoryListViewItem extends StatelessWidget {
  const SubCategoryListViewItem({
    super.key,
    required this.supCategoryModel,
  });
  final SupCategoryModel supCategoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListTile(
            title: Text(
              supCategoryModel.name,
              style: const TextStyle(
                color: Color(0xFF222222),
                fontSize: 16,
                fontFamily: metropolisFontFamiely,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
