import 'package:flutter/material.dart';

class StrollHomePage extends StatelessWidget {
  const StrollHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stroll'),
      ),
      body: Center(
        child: Text(
          'Stroll App',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}