import 'package:flutter/material.dart';
import 'package:sellix/core/utils/colors/style_color.dart';

class ButtonNavigator extends StatefulWidget {
  const ButtonNavigator({
    super.key,
    required this.text,
    required this.view,
  });

  final String text;
  final Widget view;

  @override
  State<ButtonNavigator> createState() => _ButtonNavigatorState();
}

class _ButtonNavigatorState extends State<ButtonNavigator> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the next screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget.view,
          ),
        );
      },
      child: Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: StyleColor.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: StyleColor.secondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
