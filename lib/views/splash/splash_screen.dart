import 'package:flutter/material.dart';

import '../sign_up/sign_up_screen.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  const SignUpScreen(),
            ));
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
