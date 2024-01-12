import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/BackGround.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/TextForm.dart';
import '../../../controller/auth/signup_controller.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController userNameEditingController = TextEditingController();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();
  final TextEditingController reSetPasswordEditingController = TextEditingController();
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BG(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(100)),
                const LogoText(),
                SizedBox(height: getProportionateScreenHeight(50)),
                Column(
                  children: [
                    TextForm(
                      hint: 'Enter your Name',
                      label: 'UserName',
                      textEditingController: userNameEditingController,
                      obscure: false, enabled: true,
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextForm(
                      hint: 'Enter your Email',
                      label: 'Email',
                      textEditingController: emailEditingController,
                      obscure: false, enabled: true,
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextForm(
                      hint: 'Enter your Password',
                      label: 'Email',
                      textEditingController: passwordEditingController,
                      obscure: true, enabled: true,
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextForm(
                      hint: 'Re enter your Password',
                      label: 'Confirm Password',
                      textEditingController: reSetPasswordEditingController,
                      obscure: true, enabled: true,
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                CustomButton(
                  text: 'SignUp',
                  onTap: () {
                    if (passwordEditingController.text ==
                        reSetPasswordEditingController.text) {
                      singUp(context,userNameEditingController,emailEditingController,passwordEditingController);
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Sign Up Error'),
                          content: const Text("Passwords isn't equals!!"),
                          actions: [
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
