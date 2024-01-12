import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/components/ProfileImage.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/components/TextFields.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const LogoText(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(30)),
        child: Column(
          children: [
            const ProfileImage(),
            SizedBox(height: getProportionateScreenHeight(15)),
            const TextForms(),
            const Spacer(),
            CustomButton(text: 'save', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
