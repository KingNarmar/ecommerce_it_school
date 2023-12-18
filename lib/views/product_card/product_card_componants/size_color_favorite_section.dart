import 'package:flutter/material.dart';

import 'custom_favorite_icon.dart';
import 'product_card_custom_container.dart';
import 'select_size_buttom_sheet.dart';

class SizeColorFavoriteSection extends StatelessWidget {
  const SizeColorFavoriteSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductCardCustomContainer(
          text: "Size",
          onTap: () {
            selectSizeButtomSheet(context);
          },
        ),
        const ProductCardCustomContainer(text: "Color"),
        const CustomFavoriteIcon(),
      ],
    );
  }
}
