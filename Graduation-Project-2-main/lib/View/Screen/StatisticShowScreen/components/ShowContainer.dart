import 'package:flutter/material.dart';

import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Static/StaticColor.dart';
import 'ShowContainerBody.dart';

class ShowContainer extends StatelessWidget {
  final String year,crop,city;
  const ShowContainer({
    super.key, required this.year, required this.crop, required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(15)),
      width: getProportionateScreenWidth(375),
      decoration: BoxDecoration(
        border: Border.all(color: greenlight),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ShowContainerBody(year: year, crop: crop, city: city,),
    );
  }
}