import 'package:flutter/material.dart';

import '../../../models/product_model.dart';

import 'home_page_new_list_view_item.dart';

class HomeListViewBuilderSection extends StatelessWidget {
  const HomeListViewBuilderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.369458128,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ProductModel.productList.length,
        itemBuilder: (context, index) {
          return HomePageNewListViewItem(
              product: ProductModel.productList[index]);
        },
      ),
    );
  }
}
