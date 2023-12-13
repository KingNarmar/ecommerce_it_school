import 'package:flutter/material.dart';

class ColorFilterModel {
  final Color color;

  ColorFilterModel({required this.color});

  static final List<ColorFilterModel> colorsList = [
    ColorFilterModel(color: const Color(0xFF020202)),
    ColorFilterModel(color: const Color(0xFFF6F6F6)),
    ColorFilterModel(color: const Color(0xFFB72222)),
    ColorFilterModel(color: const Color(0xFFBEA8A8)),
    ColorFilterModel(color: const Color(0xFFE2BB8D)),
    ColorFilterModel(color: const Color(0xFF151867))
  ];
}
