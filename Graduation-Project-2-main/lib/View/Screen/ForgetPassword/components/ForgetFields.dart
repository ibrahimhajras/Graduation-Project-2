import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/TextForm.dart';

class ForgetFields extends StatelessWidget {
  const ForgetFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController emailEditingController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Enter Your Email To Reset Your Password",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
        SizedBox(height: getProportionateScreenHeight(20),),
        TextForm(
            hint: "Enter Your Email",
            label: "Email",
            textEditingController: emailEditingController,
            obscure: false, enabled: true,),
      ],
    );
  }
}
