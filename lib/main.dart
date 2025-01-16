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
      title: 'Stroll App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StrollHomePage(),
    );
  }
}
