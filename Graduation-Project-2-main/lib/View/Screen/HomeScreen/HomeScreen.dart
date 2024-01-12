import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/GoogleMap.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/Utils/Widget/drawer.dart';
import 'package:gradproject2/View/Screen/HomeScreen/components/AddCrop.dart';
import 'package:gradproject2/models/dropdown_model.dart';
import '../../../Utils/Widget/NavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const AddCrop());
          },
          child: const Icon(
            Icons.add,
            color: greendark,
          )),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavBar(id: 'Home'),
      body: Column(
        children: [
          CustomDropDown(selectedValue: dropdownlist[2].value, menuItems: dropdownlist[2].item, func: (String? s) {  },),
          SizedBox(height: getProportionateScreenHeight(25),),
          const Expanded(child: GoogleMapWidget()),
        ],
      ),
    );
  }
}