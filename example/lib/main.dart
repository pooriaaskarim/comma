import 'package:comma/shelf.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comma',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const Home(),
    );
  }
}
