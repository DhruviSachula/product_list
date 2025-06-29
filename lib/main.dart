import 'package:exam/splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/product_list_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home:  SplashScreen(),
    );
  }
}
