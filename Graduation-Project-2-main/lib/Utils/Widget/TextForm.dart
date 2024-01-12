import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';

class TextForm extends StatelessWidget {
  final String hint;
  final String label;
  final bool obscure;
  final bool enabled;
  final TextEditingController textEditingController;
  const TextForm({
    super.key, required this.hint, required this.label,required this.textEditingController, required this.obscure, required this.enabled
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
       obscureText: obscure,
       enabled: enabled,
       decoration:  InputDecoration(
        hintText: hint,
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25),vertical: getProportionateScreenHeight(20)),
        border: const OutlineInputBorder(
         borderRadius: BorderRadius.all(Radius.circular(10)),
         gapPadding: 15,
        ),
       ),
    );
  }
}