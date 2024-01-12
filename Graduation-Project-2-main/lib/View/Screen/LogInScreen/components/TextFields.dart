import 'package:flutter/material.dart';
import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/TextForm.dart';

class TextFields extends StatelessWidget {
  final TextEditingController emailEditingController;
  final TextEditingController passwordEditingController;
  const TextFields({super.key,required this.emailEditingController,required this.passwordEditingController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextForm(
          hint: 'Enter your Email',
          label: 'Email', textEditingController: emailEditingController, obscure: false, enabled: true,
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        TextForm(
          hint: 'Enter your Password',
          label: 'Password', textEditingController: passwordEditingController, obscure: true, enabled: true,
        ),
      ],
    );
  }
}
