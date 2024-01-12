import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController current = TextEditingController();
  TextEditingController newPass = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(450),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextForm(hint: 'Enter Current Password', label: 'Current Password', textEditingController: current, obscure: true, enabled: true,),
            TextForm(hint: 'Enter New Password', label: 'New Password', textEditingController: current, obscure: true, enabled: true,),
            TextForm(hint: 'Enter Confirm New Password', label: 'Confirm New Password', textEditingController: current, obscure: true, enabled: true,),
            // const Spacer(),
            CustomButton(text: "Save", onTap: (){}),
          ],
        ),
      ),
    );
  }
}
