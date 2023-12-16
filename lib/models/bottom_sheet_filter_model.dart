import 'package:flutter/material.dart';

class BottomSheetFilterModel {
  final String name;
  final Color? textColor;
  Color? tileColor;
  bool? isSelected;

  BottomSheetFilterModel({
    required this.name,
    this.textColor,
    this.tileColor = Colors.white,
    this.isSelected = false,
  });
  static final List<BottomSheetFilterModel> filters = [
    BottomSheetFilterModel(name: "Popular"),
    BottomSheetFilterModel(name: "Newest"),
    BottomSheetFilterModel(name: "Customer review"),
    BottomSheetFilterModel(name: "Price : Lowest to high"),
    BottomSheetFilterModel(name: "Price : highest to low"),
  ];
}
