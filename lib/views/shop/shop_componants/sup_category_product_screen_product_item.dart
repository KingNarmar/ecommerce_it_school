import 'package:ecommerce_it_school/models/sup_category_product_model.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

class SupCategoryProductScreenProductItem extends StatelessWidget {
  const SupCategoryProductScreenProductItem({
    super.key,
    required this.supCategoryProductModel,
  });
  final SupCategoryProductModel supCategoryProductModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.012315271,
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.sizeOf(context).height * 0.032019704),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.128078818,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 25,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      ),
                    ],
                    color: Colors.white),
                child: Row(
                  children: [
                    Image.asset(
                      supCategoryProductModel.image,
                      fit: BoxFit.fill,
                      height: double.infinity,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.021333333,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          supCategoryProductModel.name,
                          style: const TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: metropolisFontFamiely,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.sizeOf(context).height * 0.009852217,
                        ),
                        Text(
                          supCategoryProductModel.supplier,
                          style: const TextStyle(
                            color: Color(0xFF9B9B9B),
                            fontSize: 11,
                            fontFamily: metropolisFontFamiely,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.02,
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.sizeOf(context).height * 0.009852217,
                        ),
                        Row(
                          children: [
                            for (int i = 0;
                                i < supCategoryProductModel.numOfStars;
                                i++)
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            Text(
                              "(${supCategoryProductModel.rating})",
                              style: const TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 10,
                                fontFamily: metropolisFontFamiely,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:
                              MediaQuery.sizeOf(context).height * 0.009852217,
                        ),
                        Text(
                          '${supCategoryProductModel.price}\$',
                          style: const TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 14,
                            fontFamily: metropolisFontFamiely,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 0,
                bottom: -10,
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
      ],
    );
  }
}
