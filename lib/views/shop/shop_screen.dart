import 'package:flutter/material.dart';

import 'shop_componants/category_list_view_builder_section.dart';

import 'shop_componants/shop_screen_tap_bar.dart';
import 'shop_componants/summer_sales_section.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Category",
          ),
          centerTitle: true,
          bottom: shopScreenTapBar(),
        ),
        body: const TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //SummerSales Section
                    SummerSalesSection(),
                    //Category List View builder Section
                    CategoryListViewBuilderSection()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
