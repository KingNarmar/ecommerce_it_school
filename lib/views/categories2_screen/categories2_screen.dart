import 'package:flutter/material.dart';

import 'categories2_screen_componants/categories2_app_bar.dart';
import 'categories2_screen_componants/categories2_header.dart';
import 'categories2_screen_componants/categories2_list_view_builder.dart';

class Categories2Screen extends StatelessWidget {
  const Categories2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: categories2AppBar(),
      body: const SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Categories2Header(),
          Categories2ListViewBuilder()
        ],
      )),
    );
  }
}
