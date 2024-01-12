import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/BackGround.dart';
import '../../../Utils/Widget/CustomButton.dart';
import '../../../Utils/Widget/LogoText.dart';
import '../../../controller/auth/login_controller.dart';
import 'components/Remember&Forget.dart';
import 'components/SignUpButton.dart';
import 'components/TextFields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailEditingController=TextEditingController();
  TextEditingController passwordEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BG(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(100)),
                const LogoText(),
                SizedBox(height: getProportionateScreenHeight(75)),
                TextFields(emailEditingController: emailEditingController,passwordEditingController: passwordEditingController,),
                SizedBox(height: getProportionateScreenHeight(15)),
                const RememberForget(),
                SizedBox(height: getProportionateScreenHeight(50)),
                CustomButton(text: 'LogIn', onTap: () {
                  logIn(context,emailEditingController,passwordEditingController);
                  },),
                SizedBox(height: getProportionateScreenHeight(25)),
                const SignUpButton(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}