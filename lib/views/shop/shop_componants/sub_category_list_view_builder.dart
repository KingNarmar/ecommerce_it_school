import 'package:ecommerce_it_school/views/shop/shop_componants/sup_category_list_view_item.dart';
import 'package:flutter/material.dart';

import '../../../models/sup_category_model.dart';

class SubCategoryListViewBuilder extends StatelessWidget {
  const SubCategoryListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: SupCategoryModel.subCategoryList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SubCategoryListViewItem(
          supCategoryModel: SupCategoryModel.subCategoryList[index],
        );
      },
    );
  }
}
