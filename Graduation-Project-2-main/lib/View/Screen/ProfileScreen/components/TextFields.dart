import 'package:flutter/material.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/components/change_email.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/components/change_password.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/components/change_user_name.dart';
import 'package:gradproject2/main.dart';
import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/TextForm.dart';

class TextForms extends StatelessWidget {
  const TextForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextForm(
            hint: 'Enter Your Name',
            label: 'Name',
            textEditingController:
                TextEditingController(text: sharedPreferences.getString("User_Name")),
            obscure: false, enabled: false,),
        SizedBox(height: getProportionateScreenHeight(5),),
        InkWell(onTap: () {
          showModalBottomSheet(context: context, builder: (context) => const ChangeUserName(),);
        }, child: const Text('Change')),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextForm(
            hint: 'Enter Your Email',
            label: 'Email',
            textEditingController:
                TextEditingController(text: sharedPreferences.getString("Email")),
            obscure: false, enabled: false,),
        SizedBox(height: getProportionateScreenHeight(5),),
        InkWell(onTap: () {
          showModalBottomSheet(context: context, builder: (context) => const ChangeModal());
        }, child: const Text('Change')),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextForm(
          hint: 'Enter Your Password',
          label: 'Password',
          textEditingController:
          TextEditingController(text: sharedPreferences.getString("Email")),
          obscure: true, enabled: false,),
        SizedBox(height: getProportionateScreenHeight(5),),
        InkWell(onTap: () {
          showModalBottomSheet(context: context, builder: (context) => const ChangePassword());
        }, child: const Text('Change')),
        SizedBox(height: getProportionateScreenHeight(20)),

      ],
    );
  }
}
