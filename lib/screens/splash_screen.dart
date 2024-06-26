import 'package:e_commerce_app/registration_screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget 
{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    Future.delayed(const Duration(seconds: 4), () 
    {
      Navigator.pushReplacement(context, PageTransition(child: const LoginPage(), type: PageTransitionType.fade, duration: const Duration(milliseconds: 500)));
    });

    return Scaffold
    (
      backgroundColor: Colors.white,

      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Animate
            (
              effects: 
              [
                FadeEffect(duration: 2.seconds),
              ],
              child: Image.asset("assets/images/app_logo.png", height: 600, fit: BoxFit.contain),
            ),

            Animate
            (
              effects: 
              [
                FadeEffect(duration: 2.seconds),
              ],
              child: const Text("E-Commerce", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35))
            ),

          ],
        ),
      ),

    );
  }
}