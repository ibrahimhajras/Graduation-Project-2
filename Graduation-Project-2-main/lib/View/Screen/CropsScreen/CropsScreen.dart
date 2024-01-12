import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/Utils/Widget/GoogleMap.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';
import 'package:gradproject2/Utils/Widget/drawer.dart';

import '../../../models/dropdown_model.dart';

class CropsScreen extends StatefulWidget {
  const CropsScreen({super.key});

  @override
  State<CropsScreen> createState() => _CropsScreenState();
}

class _CropsScreenState extends State<CropsScreen> {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(value: "22", child: Text("2022")),
    const DropdownMenuItem(value: "21", child: Text("2021")),
    const DropdownMenuItem(value: "20", child: Text("2020")),
    const DropdownMenuItem(value: "19", child: Text("2019")),
    const DropdownMenuItem(value: "18", child: Text("2018")),
    const DropdownMenuItem(value: "17", child: Text("2017")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavBar(id: 'Crops'),
      body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Crops',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getProportionateScreenHeight(15)),
                CustomDropDown(selectedValue: dropdownlist[2].value,menuItems: dropdownlist[2].item, func: (String? s) {  },),
                const CustomRadioButton(),
                CustomButton(text: 'Show', onTap: () {}),
                SizedBox(height: getProportionateScreenHeight(10),),
              ],
            ),
          ),
          const Expanded(
            child: GoogleMapWidget(),
          )
        ],
      ),
    );
  }
}
