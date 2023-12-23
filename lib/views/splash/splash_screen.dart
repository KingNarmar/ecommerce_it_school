import 'package:ecommerce_it_school/shared/componants/bottom_nav_bar_screen.dart';
import 'package:ecommerce_it_school/shared/helpers/navigator_helper.dart';
import 'package:ecommerce_it_school/shared/helpers/shared_helper.dart';
import 'package:ecommerce_it_school/views/login/login_screen.dart';
import 'package:flutter/material.dart';


class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
     bool isLogin = SharedHelper.prefs.getBool("isLogin") ?? false;
     NavigatorHelper.goToAndOff(context, isLogin ? BottomNavBarScreen() : const LoginScreen());
      },
    );
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.category,
              size: 40,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
