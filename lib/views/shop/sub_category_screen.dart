import 'package:ecommerce_it_school/views/shop/shop_componants/sub_category_list_view_builder.dart';
import 'package:flutter/material.dart';

import 'shop_componants/sub_category_header.dart';
import 'shop_componants/sup_category_app_bar.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: subCategoryAppBar(),
      body: const SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          SubCategoryHeader(),
          SubCategoryListViewBuilder()
        ],
      )),
    );
  }
}
