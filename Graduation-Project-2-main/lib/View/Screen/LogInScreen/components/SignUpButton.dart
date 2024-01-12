import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/route.dart';

import '../../../../Utils/Static/StaticColor.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Don't Have An Account? ",
          style: TextStyle(color: grey, fontSize: 16),
        ),
        InkWell(
            onTap: () {
              Get.toNamed(AppRoute.signup);
            },
            child: const Text(
              "SignUp ",
              style: TextStyle(color: greendark, fontSize: 16),
            )),
      ],
    );
  }
}
