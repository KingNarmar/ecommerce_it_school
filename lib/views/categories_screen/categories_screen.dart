import 'package:flutter/material.dart';

import 'categories_screen_componants/summer_sales_section.dart';
import 'categories_screen_componants/categories_list_view_builder_section.dart';
import 'categories_screen_componants/categories_screen_tap_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Categories",
          ),
          centerTitle: true,
          bottom: categoriesScreenTapBar(),
        ),
        body: const TabBarView(
          children: [
            //Women
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //SummerSales Section
                    SummerSalesSection(),
                    //Category List View builder Section
                    CategoriesListViewBuilderSection()
                  ],
                ),
              ),
            ),
            //Men
            SingleChildScrollView(),
            //Kids
            SingleChildScrollView(),
          ],
        ),
      ),
    );
  }
}
