import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

AppBar filtersListScreenAppBar() {
  return AppBar(
    title: const Text(
      'Brand',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF222222),
        fontSize: 18,
        fontFamily: metropolisFontFamiely,
        fontWeight: FontWeight.w900,
      ),
    ),
    centerTitle: true,
    elevation: 1,
    backgroundColor: Colors.white,
  );
}
