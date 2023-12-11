import 'package:ecommerce_it_school/views/shop/shop_componants/sup_category_products_screen_top_list_item.dart';
import 'package:flutter/material.dart';

class SupCategoryProductsScreenTopListBuilder extends StatelessWidget {
  const SupCategoryProductsScreenTopListBuilder({
    super.key,
  });
  final List<String> names = const [
    "T-shirts",
    "Crop tops",
    "Sleeveless",
    'Shirts'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.036945813,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return SupCategoryProductsScreenTopListItem(
            name: names[index],
          );
        },
      ),
    );
  }
}
