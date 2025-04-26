import 'package:flutter/material.dart';
import 'package:sellix/presentation/pages/auth/login/login_sellix_screen.dart';
import 'package:sellix/presentation/pages/auth/register/register_sellix_screen.dart';

class SigninSignup extends StatefulWidget {
  const SigninSignup({super.key});

  @override
  State<SigninSignup> createState() => _SigninSignupState();
}

class _SigninSignupState extends State<SigninSignup> {
  bool isLogin = true;

  void switchAuthMode() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: isLogin
            ? LoginSellixScreen(onSwicth: switchAuthMode)
            : RegisterSellixScreen(onSwicth: switchAuthMode),
      ),
    );
  }
}
