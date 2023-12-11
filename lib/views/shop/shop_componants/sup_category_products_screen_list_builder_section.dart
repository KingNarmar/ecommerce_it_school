import 'package:flutter/material.dart';

import '../../../models/sup_category_product_model.dart';
import 'sup_category_product_screen_product_item.dart';

class SupCategoryProductsScreenListBuilderSection extends StatelessWidget {
  const SupCategoryProductsScreenListBuilderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: SupCategoryProductModel.supCategoryProductsList.length,
      itemBuilder: (context, index) {
        return SupCategoryProductScreenProductItem(
            supCategoryProductModel:
                SupCategoryProductModel.supCategoryProductsList[index]);
      },
    );
  }
}
