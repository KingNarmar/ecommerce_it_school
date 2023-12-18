import 'package:flutter/material.dart';

import '../../../models/catalog1_product_model.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/methods/methods.dart';

class ProductSupplaierNamePriceAndRatingSection extends StatelessWidget {
  const ProductSupplaierNamePriceAndRatingSection({
    super.key,
    required this.productModel,
  });
  final Catalog1ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: mediaHeight(context, 0.027093596),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.supplier,
                  style: const TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 24,
                    fontFamily: metropolisFontFamiely,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  productModel.name,
                  style: const TextStyle(
                    color: Color(0xFF9B9B9B),
                    fontSize: 11,
                    fontFamily: metropolisFontFamiely,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                Row(
                  children: [
                    if (productModel.numOfStars == 5)
                      for (int i = 0; i < 5; i++)
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                    if (productModel.numOfStars < 5)
                      for (int x = 0; x < productModel.numOfStars; x++)
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                    for (int x = 0; x < 5 - productModel.numOfStars; x++)
                      const Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                    Text(
                      '${productModel.rating}',
                      style: const TextStyle(
                        color: Color(0xFF9B9B9B),
                        fontSize: 10,
                        fontFamily: metropolisFontFamiely,
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                      ),
                    )
                  ],
                )
              ],
            ),
            Text(
              '\$${productModel.price}',
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF222222),
                fontSize: 24,
                fontFamily: metropolisFontFamiely,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 343,
          child: Text(
            'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 14,
              fontFamily: metropolisFontFamiely,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.15,
            ),
          ),
        )
      ],
    );
  }
}
