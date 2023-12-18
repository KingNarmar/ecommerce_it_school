import 'package:flutter/material.dart';

import '../../../shared/methods/methods.dart';

class ProductCardCustomContainer extends StatelessWidget {
  const ProductCardCustomContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            width: 0.40,
            color: Color(0xFFF01F0E),
          ),
        ),
      ),
      height: mediaHeight(context, 0.049261084),
      width: mediaWidth(context, 0.368),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                text,
                style: const TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // size icon
            const Icon(Icons.arrow_drop_down)
          ],
        ),
      ),
    );
  }
}
