import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';

class ChangeModal extends StatefulWidget {
  const ChangeModal({super.key});

  @override
  State<ChangeModal> createState() => _ChangeModalState();
}

class _ChangeModalState extends State<ChangeModal> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(300),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextForm(hint: 'Enter New Email', label: 'Email', textEditingController: email, obscure: false, enabled: true,),
            const Spacer(),
            CustomButton(text: "Save", onTap: (){}),
          ],
        ),
      ),
    );
  }
}
