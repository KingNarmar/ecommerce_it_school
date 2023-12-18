import 'package:ecommerce_it_school/models/catalog1_product_model.dart';
import 'package:flutter/material.dart';
import 'product_card_componants/product_card_app_bar.dart';
import 'product_card_componants/product_card_buttom_app_bar_section.dart';
import 'product_card_componants/product_card_image_section.dart';
import 'product_card_componants/product_supplaier_name_price_and_rating_section.dart';
import 'product_card_componants/size_color_favorite_section.dart';

class ProductCardScreen extends StatelessWidget {
  const ProductCardScreen({
    super.key,
    required this.productModel,
  });
  final Catalog1ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productCardAppBar(productModel.name),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //image Section
                ProductCardImageSection(productModel: productModel),
                // Size Color Favorite Section
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          const SizeColorFavoriteSection(),
                          //product suplaier , name , price and rating section
                          ProductSupplaierNamePriceAndRatingSection(
                              productModel: productModel),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const ProductCardButtomAppBarSection()
        ],
      ),
    );
  }
}
