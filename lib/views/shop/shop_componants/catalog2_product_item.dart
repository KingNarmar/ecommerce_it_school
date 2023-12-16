import 'package:ecommerce_it_school/models/catalog2_product_model.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

class Catalog2ProductItem extends StatelessWidget {
  const Catalog2ProductItem({
    super.key,
    required this.catalog2productModel,
  });
  final Catalog2ProductModel catalog2productModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.320197044,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.019704433,
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    catalog2productModel.image,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: -15,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.044334975,
                    width: MediaQuery.sizeOf(context).width * 0.096,
                    decoration: const ShapeDecoration(
                        shape: OvalBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x14000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                        color: Colors.white),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.009852217,
          ),
          Row(
            children: [
              if (catalog2productModel.numOfStars == 5)
                for (int i = 0; i < 5; i++)
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
              if (catalog2productModel.numOfStars < 5)
                for (int i = 0; i < catalog2productModel.numOfStars; i++)
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
              for (int i = 0; i < 5 - catalog2productModel.numOfStars; i++)
                const Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 15,
                ),
              Text(
                '(${catalog2productModel.rating})',
                style: const TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 10,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.009852217,
          ),
          Text(
            catalog2productModel.supplaier,
            style: const TextStyle(
              color: Color(0xFF9B9B9B),
              fontSize: 11,
              fontFamily: metropolisFontFamiely,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            catalog2productModel.name,
            style: const TextStyle(
              color: Color(0xFF222222),
              fontSize: 16,
              fontFamily: metropolisFontFamiely,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '${catalog2productModel.price}\$',
            style: const TextStyle(
              color: Color(0xFF222222),
              fontSize: 14,
              fontFamily: metropolisFontFamiely,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
