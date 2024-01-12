import 'package:flutter/material.dart';

import '../Static/StaticColor.dart';

class LogoText extends StatelessWidget {
  const LogoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ORG",
          style: TextStyle(color: greendark, fontSize: 35),
        ),
        Text(
          "Agriculture",
          style: TextStyle(color: greenlight, fontSize: 35),
        ),
      ],
    );
  }
}