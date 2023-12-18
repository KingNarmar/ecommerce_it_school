import 'package:flutter/material.dart';

import '../../../models/catalog1_product_model.dart';
import 'catalog1_product_item.dart';

class Catalog1ScreenListBuilderSection extends StatelessWidget {
  const Catalog1ScreenListBuilderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: Catalog1ProductModel.supCategoryProductsList.length,
      itemBuilder: (context, index) {
        return Catalog1ProductItem(
          catalog1ProductModel:
              Catalog1ProductModel.supCategoryProductsList[index],
          onTap: () {},
        );
      },
    );
  }
}
