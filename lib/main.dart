import 'package:ecommerce_it_school/shared/api/dio_helper.dart';
import 'package:flutter/material.dart';

import 'shared/helpers/shared_helper.dart';
import 'views/splash/splash_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedHelper.init();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home:  const SpalshScreen(),
    );
  }
}
