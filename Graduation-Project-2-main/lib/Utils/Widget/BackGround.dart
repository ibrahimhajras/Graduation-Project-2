import 'package:flutter/material.dart';

import '../Static/SizeConfig.dart';

class BG extends StatelessWidget {
  const BG({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset("assets/images/bg.png",width: getProportionateScreenWidth(375),fit: BoxFit.fill),
    );
  }
}
