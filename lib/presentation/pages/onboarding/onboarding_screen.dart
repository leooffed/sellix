import 'package:flutter/material.dart';
import 'package:sellix/core/utils/colors/style_color.dart';

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
            Stack(
              children: [
                Container(
                  height: 340,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: StyleColor.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
