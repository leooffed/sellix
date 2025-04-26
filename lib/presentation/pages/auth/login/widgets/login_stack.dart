import 'package:flutter/material.dart';
import 'package:sellix/core/utils/app/image_app.dart';

class LoginStack extends StatelessWidget {
  const LoginStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 156, 147, 240),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(1),
              bottomRight: Radius.circular(150)),
          image: DecorationImage(
            image: AssetImage(
              ImageApp.login,
            ),
            fit: BoxFit.contain,
          )),
    );
  }
}
