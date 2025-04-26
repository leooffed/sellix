import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sellix/core/utils/app/image_app.dart';
import 'package:sellix/core/utils/colors/style_color.dart';
import 'package:sellix/presentation/pages/auth/login/widgets/login_stack.dart';
import 'package:sellix/presentation/pages/home/home_page.dart';
import 'package:sellix/presentation/widgets/button_navigator.dart';
import 'package:sellix/presentation/widgets/input_textfield.dart';

class LoginSellixScreen extends StatefulWidget {
  final VoidCallback? onSwicth;
  const LoginSellixScreen({super.key, this.onSwicth});

  @override
  State<LoginSellixScreen> createState() => _LoginSellixScreenState();
}

class _LoginSellixScreenState extends State<LoginSellixScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginStack(),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: StyleColor.primaryColor),
            ),
            Text(
              "Connexion your are account now. 🎉",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            InputTextfield(
              hintText: "Enter email",
              icon: Iconsax.magic_star,
            ),
            const SizedBox(
              height: 10,
            ),
            InputTextfield(
              hintText: "Enter Password",
              icon: Iconsax.password_check,
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonNavigator(
              text: "Login",
              view: HomePage(),
            )
          ],
        ),
      ),
    );
  }
}
