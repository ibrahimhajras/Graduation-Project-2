import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';

class AddCrop extends StatelessWidget {
  const AddCrop({super.key});

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "22", child: Text("2022")),
      const DropdownMenuItem(value: "21", child: Text("2021")),
      const DropdownMenuItem(value: "20", child: Text("2020")),
      const DropdownMenuItem(value: "19", child: Text("2019")),
      const DropdownMenuItem(value: "18", child: Text("2018")),
      const DropdownMenuItem(value: "17", child: Text("2017")),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Crops"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical:getProportionateScreenHeight(20),horizontal: getProportionateScreenWidth(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///drop down for location
            CustomDropDown(selectedValue: '20', menuItems: menuItems, func: (String? s) {  },),
            SizedBox(height: getProportionateScreenHeight(25),),
            TextForm(hint: 'Enter land height', label: 'height', textEditingController: TextEditingController(), obscure: false, enabled: true,),
            SizedBox(height: getProportionateScreenHeight(25),),
            TextForm(hint: 'Enter land width', label: 'width', textEditingController: TextEditingController(), obscure: false,enabled: true),
            SizedBox(height: getProportionateScreenHeight(25),),
            ///drop down for crop
            CustomDropDown(selectedValue: '20', menuItems: menuItems,func: (String? s) {  },),
            const Spacer(),
            CustomButton(text: 'Save', onTap: (){})
          ],
        ),
      ),
    );
  }
}
