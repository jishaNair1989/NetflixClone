import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {Key? key,
      required this.icon,
      required this.title,
      this.IconSize = 30,
      this.TextSize = 18})
      : super(key: key);
  final IconData icon;
  final String title;
  final double IconSize;
  final double TextSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: IconSize,
        ),
        KHeight,
        Text(
          title,
          style: TextStyle(
            fontSize: TextSize,
          ),
        ),
      ],
    );
  }
}
