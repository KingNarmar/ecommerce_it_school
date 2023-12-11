import 'package:ecommerce_it_school/models/sup_category_model.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

class SubCategoryListViewItem extends StatelessWidget {
  const SubCategoryListViewItem({
    super.key,
    required this.supCategoryModel,
    this.onTap,
  });
  final SupCategoryModel supCategoryModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: onTap,
            child: Text(
              supCategoryModel.name,
              style: const TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 16,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w500,
                  height: 2),
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
