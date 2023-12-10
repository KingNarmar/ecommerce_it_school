import 'package:ecommerce_it_school/models/product_model.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

class HomePageNewListViewItem extends StatelessWidget {
  const HomePageNewListViewItem({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.sizeOf(context).width * 0.026666667),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(product.image, fit: BoxFit.fill),
              Positioned(
                bottom: -20,
                right: 0,
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: const ShapeDecoration(
                    shape: OvalBorder(),
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Positioned(
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.024630542,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i <= product.numOfStars; i++)
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
              Text(
                "(${product.numOfRating.toString()})",
                style: const TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 10,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w400,
                  height: 0.08,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.007389163,
          ),
          Text(
            product.category,
            style: const TextStyle(
              color: Color(0xFF9B9B9B),
              fontSize: 11,
              fontFamily: metropolisFontFamiely,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.007389163,
          ),
          Text(
            product.name,
            style: const TextStyle(
              color: Color(0xFF222222),
              fontSize: 16,
              fontFamily: metropolisFontFamiely,
              fontWeight: FontWeight.w900,
              height: 0,
            ),
          ),
          Row(
            children: [
              Text(
                '${product.oldPrice}\$',
                style: const TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 14,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.010666667,
              ),
              Text(
                '${product.newPrice}\$',
                style: const TextStyle(
                  color: Color(0xFFDB3022),
                  fontSize: 14,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w900,
                  height: 0.10,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
