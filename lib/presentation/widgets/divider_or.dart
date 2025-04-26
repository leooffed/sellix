import 'package:flutter/material.dart';
import 'package:sellix/core/utils/colors/style_color.dart';

class FlaDivider extends StatelessWidget {
  const FlaDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: StyleColor.primaryColor,
              thickness: 1,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Or',
            style: TextStyle(
              fontSize: 14,
              color: StyleColor.textColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Divider(
              color: StyleColor.primaryColor,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
