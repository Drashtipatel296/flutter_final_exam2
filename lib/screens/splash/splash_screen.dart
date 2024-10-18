import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_final_exam2/helper/auth_helper.dart';
import 'package:flutter_final_exam2/screens/home/home_screen.dart';
import 'package:flutter_final_exam2/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      Duration(seconds: 2),
      (timer) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  SignupScreen(),
                  // AuthServices.authServices.firebaseAuth.currentUser == null
                  //     ? SignupScreen()
                  //     : HomeScreen(),
            ));
      },
    );

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 250,
          width: 250,
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }
}
