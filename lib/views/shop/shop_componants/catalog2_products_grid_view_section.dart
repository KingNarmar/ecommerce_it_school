import 'package:flutter/material.dart';

import '../../../models/catalog2_product_model.dart';
import 'catalog2_product_item.dart';

class Catalog2ProductsGridViewSection extends StatelessWidget {
  const Catalog2ProductsGridViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: Catalog2ProductModel.catalog2ProductsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: MediaQuery.sizeOf(context).width * 0.042666667,
            childAspectRatio: 0.5),
        itemBuilder: (context, index) {
          return FittedBox(
            fit: BoxFit.fill,
            child: Catalog2ProductItem(
                catalog2productModel:
                    Catalog2ProductModel.catalog2ProductsList[index]),
          );
        },
      ),
    );
  }
}
