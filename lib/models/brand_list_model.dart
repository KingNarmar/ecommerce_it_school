import 'package:flutter/material.dart';

class BrandListModel {
  final String text;
  final Color? textColor;
  bool? isChecked;

  BrandListModel({
    required this.text,
    this.textColor = const Color(0xFF222222),
    this.isChecked,
  });
  static final List<BrandListModel> brandsList = [
    BrandListModel(text: "Adidas"),
    BrandListModel(text: "Adidas Origenals"),
    BrandListModel(text: "Blend"),
    BrandListModel(text: "Boutique Moschino"),
    BrandListModel(text: "Champion"),
    BrandListModel(text: "Diesel"),
    BrandListModel(text: "Jack & Jones"),
    BrandListModel(text: "Naf Naf"),
    BrandListModel(text: "Red Valentino"),
    BrandListModel(text: "s.Oliver"),
    BrandListModel(text: "Adidas"),
    BrandListModel(text: "Adidas Origenals"),
    BrandListModel(text: "Blend"),
    BrandListModel(text: "Boutique Moschino"),
    BrandListModel(text: "Champion"),
    BrandListModel(text: "Diesel"),
    BrandListModel(text: "Jack & Jones"),
    BrandListModel(text: "Naf Naf"),
    BrandListModel(text: "Red Valentino"),
    BrandListModel(text: "s.Oliver"),
  ];

  static final List<bool> selectedBrands =
      List.generate(brandsList.length, (index) => false);
}
