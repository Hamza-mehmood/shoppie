import 'package:flutter/material.dart';
import 'package:shoppie/screens/Auth/login_screen.dart';

class ShoppieApp extends StatelessWidget {
  const ShoppieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
