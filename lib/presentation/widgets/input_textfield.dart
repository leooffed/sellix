import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sellix/core/utils/colors/style_color.dart';

class InputTextfield extends StatefulWidget {
  const InputTextfield({
    super.key,
    this.hintText,
    this.icon,
    this.keyboardType,
    this.obscureText,
    this.controller,
  });
  final String? hintText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextEditingController? controller;

  @override
  State<InputTextfield> createState() => _InputTextfieldState();
}

class _InputTextfieldState extends State<InputTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText ?? false,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(fontSize: 14, color: StyleColor.textColor),
            suffixIcon: Icon(widget.icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19),
              borderSide: const BorderSide(
                color: StyleColor.primaryColor,
              ),
            )),
      ),
    );
  }
}
