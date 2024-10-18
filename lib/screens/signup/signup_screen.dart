import 'package:flutter/material.dart';
import 'package:flutter_final_exam2/controller/auth_controller.dart';
import 'package:flutter_final_exam2/helper/auth_helper.dart';
import 'package:flutter_final_exam2/screens/home/home_screen.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var authController = Get.put(AuthController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Text(
                'Sign Up to continue',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: authController.txtFirstName,
                decoration: InputDecoration(
                  hintText: 'Name',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                controller: authController.txtEmail,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                controller: authController.txtPassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () async {
                  String status = await AuthServices.authServices.createAccount(
                      authController.txtEmail.text,
                      authController.txtPassword.text);
                  if (status == 'success') {
                    authController.txtEmail.clear();
                    authController.txtPassword.clear();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  }
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff009741),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff009741), width: 1),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('ACCESS QUICKLY'),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff009741)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Google',
                      style: TextStyle(color: Color(0xff009741)),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff009741)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'LinkedIn',
                      style: TextStyle(color: Color(0xff009741)),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff009741)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'SSO',
                      style: TextStyle(color: Color(0xff009741)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Sign in'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
