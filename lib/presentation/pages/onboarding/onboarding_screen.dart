import 'package:flutter/material.dart';
import 'package:sellix/core/utils/colors/style_color.dart';
import 'package:sellix/presentation/pages/auth/auth_layout/signin_signup.dart';
import 'package:sellix/presentation/widgets/button_navigator.dart';
import 'package:sellix/presentation/widgets/stack_onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            OnbordingStax(),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Sellix',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: StyleColor.primaryColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: const Text(
                'Your one-stop solution for explore\nand taks to the data.',
                style: TextStyle(
                  fontSize: 14,
                  color: StyleColor.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Button to navigate to the next screen
            ButtonNavigator(
              text: "Get Started",
              view: SigninSignup(),
            ),
            // divider
          ],
        ),
      ),
    );
  }
}
