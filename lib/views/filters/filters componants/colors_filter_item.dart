import 'package:ecommerce_it_school/models/color_filter_model.dart';
import 'package:flutter/material.dart';

class ColorsFilterItem extends StatelessWidget {
  const ColorsFilterItem(
      {super.key, required this.colorFilterModel, this.onTap});
  final ColorFilterModel colorFilterModel;
  static Color selectedColor = Colors.white;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.117333333,
          height: MediaQuery.sizeOf(context).height * 0.054187192,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selectedColor,
            border: Border.all(
              color: Colors.red,
              width: 2,
            ),
          ),
          child: Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.096,
              height: MediaQuery.sizeOf(context).height * 0.044334975,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: colorFilterModel.color),
            ),
          ),
        ),
      ),
    );
  }
}
