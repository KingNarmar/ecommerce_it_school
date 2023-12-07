import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

import 'visual_search_componants/app_bar_text.dart';
import 'visual_search_componants/buttons_section.dart';
import 'visual_search_componants/text_section.dart';

class VisualSearchScreen extends StatelessWidget {
  const VisualSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarText(),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset(
            visualSearchImage,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextSection(),
                ButtonsSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
