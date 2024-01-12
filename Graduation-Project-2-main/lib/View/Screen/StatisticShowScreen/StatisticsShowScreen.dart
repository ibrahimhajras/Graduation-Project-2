import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';

import '../../../models/dropdown_model.dart';
import 'components/ShowContainer.dart';

class StatisticsShowScreen extends StatelessWidget {
  final String year,crop,city;
  const StatisticsShowScreen({super.key, required this.year, required this.crop, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10),vertical: getProportionateScreenHeight(25)),
        child: Column(
          children: [
            ShowContainer(year: year, crop: crop, city: city,),
            SizedBox(height: getProportionateScreenHeight(50)),
            CustomDropDown(selectedValue: dropdownlist[0].value,menuItems: dropdownlist[0].item, func: (String? s) {  },),
            SizedBox(height: getProportionateScreenHeight(25)),
            CustomDropDown(selectedValue: dropdownlist[1].value,menuItems: dropdownlist[1].item, func: (String? s) {  },),
            SizedBox(height: getProportionateScreenHeight(25)),
            CustomDropDown(selectedValue: dropdownlist[2].value,menuItems: dropdownlist[2].item, func: (String? s) {  },),
            SizedBox(height: getProportionateScreenHeight(15)),
            const CustomRadioButton(),
            const Spacer(),
            CustomButton(text: 'Show', onTap: (){}),
          ],
        ),
      ),
    );
  }
}