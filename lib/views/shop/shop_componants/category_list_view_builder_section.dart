import 'package:ecommerce_it_school/views/shop/shop_componants/category_list_view_item.dart';
import 'package:flutter/material.dart';

import '../../../models/category_model.dart';

class CategoryListViewBuilderSection extends StatelessWidget {
  const CategoryListViewBuilderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: CategoryModel.categoryList.length,
      itemBuilder: (context, index) {
        return CategoryListViewItem(
          categoryModel: CategoryModel.categoryList[index],
        );
      },
    );
  }
}
