import 'package:ecommerce_it_school/models/categories2_model.dart';
import 'package:ecommerce_it_school/views/shop/shop_componants/catalog1_screen_header_section.dart';
import 'package:flutter/material.dart';

import 'shop_componants/catalog1_screen_filters_section.dart';
import 'shop_componants/catalog1_screen_list_builder_section.dart';
import 'shop_componants/catalog1_screen_top_list_builder_section.dart';

class Catalog1Screen extends StatelessWidget {
  const Catalog1Screen({
    super.key,
    required this.supCategoryModel,
  });
  final Categories2Model supCategoryModel;
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
              Catalog1ScreenHeaderSection(
                supCategoryModel: supCategoryModel,
              ),
              const Catalog1ScreenTopListBuilduerSection(),
              const Catalog1ScreenFiltersSection(),
              const Catalog1ScreenListBuilderSection()
            ],
          ),
        ),
      ),
    );
  }
}
