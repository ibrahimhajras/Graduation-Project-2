import 'package:flutter/material.dart';

import '../Static/SizeConfig.dart';
import '../Static/StaticColor.dart';

class CustomDropDown extends StatefulWidget {
  final String selectedValue;
  final List<DropdownMenuItem<String>> menuItems;
  final Function(String?)? func;
  const CustomDropDown({super.key,required this.selectedValue,required this.func,required this.menuItems});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}
late String ss;
class _CustomDropDownState extends State<CustomDropDown> {
@override
  void initState() {
  ss = widget.selectedValue;
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(375),
      decoration: BoxDecoration(
          border: Border.all(color: greendark),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        underline: Container(color: Colors.white),
        isExpanded: true,
        alignment: Alignment.center,
        value: widget.selectedValue,
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10)),
        onChanged: widget.func,
        items: widget.menuItems,
      ),
    );
  }
}