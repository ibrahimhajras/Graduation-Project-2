import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({
    super.key,
  });

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(115),
      width: getProportionateScreenWidth(115),
      child: const CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage("assets/images/avatar.png"),
      ),
    );
  }
}