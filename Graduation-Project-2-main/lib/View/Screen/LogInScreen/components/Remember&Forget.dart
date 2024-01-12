import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/Static/StaticColor.dart';
import '../../../../Utils/Static/route.dart';

class RememberForget extends StatelessWidget {
  const RememberForget({super.key});

  @override
  Widget build(BuildContext context) {
    bool check = true;
    return Row(
      children: [
        Checkbox(
          value: check,
          onChanged: (value) {
            // setState(() {
            //   check = value!;
            // });
          },
        ),
        const Text(
          "Remember me",
          style: TextStyle(
            color:grey,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            Get.toNamed(AppRoute.forget);
          },
          child: const Text(
            "Forget Password?",
            style: TextStyle(
              color: greendark,
              decorationColor: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
