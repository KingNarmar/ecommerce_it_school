import 'package:flutter/material.dart';

import '../../../shared/componants/custom_button.dart';
import '../../../shared/methods/methods.dart';

class ProductCardButtomAppBarSection extends StatelessWidget {
  const ProductCardButtomAppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 8,
              offset: Offset(0, -4),
              spreadRadius: 0,
            ),
          ],
        ),
        height: mediaHeight(context, 0.137931034),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 44),
          child: CustomButton(
            child: "ADD To CART",
            height: mediaHeight(context, 0.0591133),
          ),
        ),
      ),
    );
  }
}
