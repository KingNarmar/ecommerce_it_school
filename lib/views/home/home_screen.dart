import 'package:ecommerce_it_school/shared/helpers/shared_helper.dart';
import 'package:ecommerce_it_school/views/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_componants/home_list_view_builder_section.dart';
import 'home_componants/home_page_header_section.dart';
import 'home_componants/products_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: ()async{
await SharedHelper.prefs.setBool("isLogin", false);
await SharedHelper.prefs.remove("access_token").then((value) {
Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (context) => const SpalshScreen(),), (route) => route.settings.name == "currentScreen");
},);
      }, icon: const Icon(Icons.logout))]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomePageHeaderSection(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.040640394,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductsHeader(
                      headerName: "New",
                      headerSubTitle: "You've never seen it before!"),
                  const HomeListViewBuilderSection(),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.056650246,
                  ),
                  const ProductsHeader(
                    headerName: "Sale",
                    headerSubTitle: 'Super summer sale',
                  ),
                  const HomeListViewBuilderSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
