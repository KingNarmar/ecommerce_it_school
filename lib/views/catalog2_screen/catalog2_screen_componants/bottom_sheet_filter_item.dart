import 'package:ecommerce_it_school/models/bottom_sheet_filter_model.dart';
import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomSheetFilterItem extends StatelessWidget {
  const BottomSheetFilterItem({
    super.key,
    required this.bottomSheetFilterModel,
    this.onTap,
  });
  final BottomSheetFilterModel bottomSheetFilterModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: bottomSheetFilterModel.tileColor,
      title: Text(
        bottomSheetFilterModel.name,
        style: TextStyle(
          color: bottomSheetFilterModel.textColor,
          fontSize: 16,
          fontFamily: metropolisFontFamiely,
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    );
  }
}
