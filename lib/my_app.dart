// import 'package:e_commerce_app/main_layout/main_layout.dart';
import 'package:e_commerce_app/main_layout/main_layout.dart';
import 'package:e_commerce_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: MainLayout()
    );
  }
}