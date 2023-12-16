import 'package:flutter/material.dart';

import 'catalog1_top_list_item.dart';

class Catalog1ScreenTopListBuilduerSection extends StatelessWidget {
  const Catalog1ScreenTopListBuilduerSection({
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
          return Catalog1TopListItem(
            name: names[index],
          );
        },
      ),
    );
  }
}
