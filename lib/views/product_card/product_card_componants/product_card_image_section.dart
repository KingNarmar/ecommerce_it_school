import 'package:flutter/material.dart';

import '../../../models/catalog1_product_model.dart';
import '../../../shared/methods/methods.dart';

class ProductCardImageSection extends StatelessWidget {
  const ProductCardImageSection({
    super.key,
    required this.productModel,
  });

  final Catalog1ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        productModel.image,
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      SizedBox(
        height: mediaHeight(context, 0.014778325),
      ),
    ]);
  }
}
