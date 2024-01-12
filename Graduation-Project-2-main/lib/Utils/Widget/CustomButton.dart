
import 'package:flutter/material.dart';

import '../Static/SizeConfig.dart';
import '../Static/StaticColor.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CustomButton({
    super.key, required this.text, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getProportionateScreenWidth(375),
        alignment: Alignment.center,
        height: getProportionateScreenHeight(53),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff58E680),
                  Color(0xff1DAB45),
                ],
                begin:Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0,0.5],
                transform:GradientRotation(1.2)
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child:  Text(text, style: const TextStyle(color: white,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
