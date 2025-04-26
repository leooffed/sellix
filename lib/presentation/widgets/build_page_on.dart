import 'package:flutter/material.dart';
import 'package:sellix/core/utils/colors/style_color.dart';

Widget BuildPage({required String title, required String desc}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 180),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: StyleColor.primaryColor)),
        const SizedBox(height: 10),
        Text(desc,
            style: const TextStyle(
                fontSize: 18, color: Colors.black54, height: 1.5)),
      ],
    ),
  );
}
