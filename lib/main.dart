import 'package:flutter/material.dart';

import 'screens/HomeScreen.dart';

Color black = const Color(0xff0E0E0E);
Color white = const Color(0xffFFFFFF);
Color red = const Color(0xffEE403D);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
