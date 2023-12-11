import 'package:ecommerce_it_school/models/sup_category_model.dart';
import 'package:ecommerce_it_school/views/shop/shop_componants/sup_category_products_screen_header_section.dart';
import 'package:flutter/material.dart';

import 'shop_componants/sup_category_products_screen_filters_section.dart';
import 'shop_componants/sup_category_products_screen_top_list_builder.dart';

class SupCategoryProductsScreen extends StatelessWidget {
  const SupCategoryProductsScreen({
    super.key,
    required this.supCategoryModel,
  });
  final SupCategoryModel supCategoryModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SupCategoryProductsScreenHeaderSection(
              supCategoryModel: supCategoryModel,
            ),
            const SupCategoryProductsScreenTopListBuilder(),
            const SupCategoryProductsScreenFiltersSection(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.012315271,
            ),
          ],
        ),
      )),
    );
  }
}
