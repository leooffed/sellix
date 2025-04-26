import 'package:flutter/material.dart';
import 'package:sellix/core/utils/app/image_app.dart';
import 'package:sellix/core/utils/colors/style_color.dart';

class OnbordingStax extends StatelessWidget {
  const OnbordingStax({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 340,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: StyleColor.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(1),
              bottomRight: Radius.circular(200),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: Image.asset(
            ImageApp.data3,
            height: 300,
            width: 300,
          ),
        ),
      ],
    );
  }
}
