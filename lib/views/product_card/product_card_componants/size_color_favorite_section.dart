import 'package:flutter/widgets.dart';

import 'custom_favorite_icon.dart';
import 'product_card_custom_container.dart';

class SizeColorFavoriteSection extends StatelessWidget {
  const SizeColorFavoriteSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductCardCustomContainer(text: "Size"),
        ProductCardCustomContainer(text: "Color"),
        CustomFavoriteIcon(),
      ],
    );
  }
}
