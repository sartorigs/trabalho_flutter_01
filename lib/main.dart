import 'package:flutter/material.dart';

import 'app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.grey),
      home: const Login(title: 'Login'),
    );
  }
}
