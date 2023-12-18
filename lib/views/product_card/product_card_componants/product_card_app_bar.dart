import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

AppBar productCardAppBar(String productname) {
  return AppBar(
    title: Text(
      productname,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color(0xFF222222),
        fontSize: 18,
        fontFamily: metropolisFontFamiely,
        fontWeight: FontWeight.w400,
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.share),
      ),
    ],
  );
}
