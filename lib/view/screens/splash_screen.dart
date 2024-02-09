import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvvmtemplate/view/screens/navigation_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Check the login status when the screen is initialized
    checkLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Text(
          'meTunes', // Display the app name on the splash screen
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }

  // Method to check the login status and navigate accordingly
  Future<void> checkLogin() async {
    // Obtain the navigator context
    final navigatorContext = Navigator.of(context);

    // Delay the execution by 3 seconds for the splash screen effect
    await Future.delayed(const Duration(milliseconds: 1500));

    navigatorContext.pushReplacement(
        MaterialPageRoute(builder: (context) => const NavigationScreen()));
  }
}
