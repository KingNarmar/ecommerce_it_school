import 'package:flutter/material.dart';

AppBar categories2AppBar() {
  return AppBar(
    elevation: 2,
    title: const Text(
      "Categories",
      style: TextStyle(
        color: Color(0xFF222222),
        fontSize: 18,
        fontFamily: 'Metropolis',
        fontWeight: FontWeight.w700,
      ),
    ),
    centerTitle: true,
    actions: const [Icon(Icons.search)],
  );
}
