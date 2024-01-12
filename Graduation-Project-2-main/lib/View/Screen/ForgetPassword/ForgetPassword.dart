import 'package:flutter/material.dart';
import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/BackGround.dart';
import '../../../Utils/Widget/CustomButton.dart';
import '../../../Utils/Widget/LogoText.dart';
import 'components/ForgetFields.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BG(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(150)),
                const LogoText(),
                SizedBox(height: getProportionateScreenHeight(100)),
                const ForgetFields(),
                SizedBox(height: getProportionateScreenHeight(50)),
                CustomButton(
                  text: 'Continue',
                  onTap: (){},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}