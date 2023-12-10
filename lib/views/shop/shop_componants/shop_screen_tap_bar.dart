import 'package:flutter/material.dart';

TabBar shopScreenTapBar() {
  return const TabBar(
    indicatorColor: Color(0xFFDB3022),
    dividerColor: Colors.transparent,
    tabs: [
      Tab(
        child: Text(
          "Women",
          style: TextStyle(
            color: Color(0xFF222222),
            fontSize: 16,
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Tab(
        child: Text(
          "Men",
          style: TextStyle(
            color: Color(0xFF222222),
            fontSize: 16,
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Tab(
        child: Text(
          "Kids",
          style: TextStyle(
            color: Color(0xFF222222),
            fontSize: 16,
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );
}
