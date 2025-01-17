import 'package:flutter/material.dart';
import 'package:stroll_app/presentation/pages/stroll_home_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stroll App',
      theme: ThemeData(
        fontFamily: 'ProximaNova',
      ),
      home: StrollHomePage(),
    );
  }
}
