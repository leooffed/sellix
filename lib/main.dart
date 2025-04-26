import 'package:flutter/material.dart';
import 'package:sellix/core/utils/app/colors_apparence.dart';
import 'package:sellix/presentation/pages/onboarding/onboarding_screen.dart';

void main() {
  runApp(const Sellix());
}

class Sellix extends StatelessWidget {
  const Sellix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Sellix',
      theme: AppApparence.lightApp,
      darkTheme: AppApparence.darkApp,
      themeMode: AppApparence.themeMode,
      home: const OnboardingScreen(),
    );
  }
}
