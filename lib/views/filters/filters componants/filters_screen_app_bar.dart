import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

AppBar filtersScreenAppBar() {
  return AppBar(
    title: const Text(
      'Filters',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF222222),
        fontSize: 18,
        fontFamily: metropolisFontFamiely,
        fontWeight: FontWeight.w700,
      ),
    ),
    centerTitle: true,
  );
}
