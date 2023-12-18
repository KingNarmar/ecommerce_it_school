import 'package:ecommerce_it_school/models/brand_list_model.dart';
import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class BrandListItem extends StatelessWidget {
  const BrandListItem({
    super.key,
    required this.brandListModel,
  });
  final BrandListModel brandListModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          brandListModel.text,
          style: TextStyle(
            color: brandListModel.textColor,
            fontSize: 16,
            fontFamily: metropolisFontFamiely,
            fontWeight: FontWeight.w600,
          ),
        ),
        Checkbox(
          value: false,
          onChanged: (value) {
            brandListModel.isChecked = true;
          },
        )
      ],
    );
  }
}
