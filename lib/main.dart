import 'package:flutter/material.dart';
import 'package:practice/screen/home_screen.dart';
import 'package:practice/style/size_config.dart';
import 'package:practice/utils/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(
        mobile: HomeScreen(),
        tablet: HomeScreen(),
      )
    );
  }
}
