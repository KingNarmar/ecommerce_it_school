import 'package:flutter/material.dart';

double mediaHeight(BuildContext context, double heightPresent) {
  return MediaQuery.sizeOf(context).height * heightPresent;
}

double mediaWidth(BuildContext context, double widthPresnt) {
  return MediaQuery.sizeOf(context).width * widthPresnt;
}
