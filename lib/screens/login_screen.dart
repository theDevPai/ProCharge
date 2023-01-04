import 'package:firebase_auth_demo/screens/home_screen.dart';
import 'package:firebase_auth_demo/screens/login_email_password_screen.dart';
import 'package:firebase_auth_demo/screens/phone_screen.dart';
import 'package:firebase_auth_demo/screens/signup_email_password_screen.dart';
import 'package:firebase_auth_demo/utils/colors.dart';
import 'package:firebase_auth_demo/widgets/custom_button.dart';
import 'package:firebase_auth_demo/widgets/custom_buttonicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../services/firebase_auth_methods.dart';

class LoginScreen extends StatefulWidget {
  static String routeName='/login-screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
String? errorMessage = '';
bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ProCharge+", 
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          ).copyWith(
            color: blackbutton,
          )
          ),
           Padding(
            padding: const EdgeInsets.all(19.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/ev.jpg')),
              ),
              ),
          ),
          const SizedBox(height: 40,),
            CustomButton(
              onTap: (){
                Navigator.pushNamed(context, EmailPasswordLogin.routeName);
              },
              text: 'Login with Email',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, PhoneScreen.routeName);
                  },
                  text: 'OTP Login'
                ),
                CustomButtonIcon(
              onTap: () {},
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, HomePage.routeName);
              },
              text: 'Guest Login',
            ),
              ],
            ),
            
            const Text("Don't Have an account? Sign Up Now")
          ]
          ),
          )
    );
  }
}