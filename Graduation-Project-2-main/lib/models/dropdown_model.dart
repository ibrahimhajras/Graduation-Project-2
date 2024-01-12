import 'package:flutter/material.dart';

class DropDownModel {
  String value;
  List<DropdownMenuItem<String>> item;
  DropDownModel({required this.value,required this.item});
}
List<DropDownModel> dropdownlist=[
  DropDownModel(value: '2023', item: [
    const DropdownMenuItem(value: "2022", child: Text("2022")),
    const DropdownMenuItem(value: "2021", child: Text("2021")),
    const DropdownMenuItem(value: "2020", child: Text("2020")),
    const DropdownMenuItem(value: "2019", child: Text("2019")),
    const DropdownMenuItem(value: "2018", child: Text("2018")),
  ]),
  DropDownModel(value: 'Irbid', item: [
    const DropdownMenuItem(value: "Irbid", child: Text("Irbid")),
    const DropdownMenuItem(value: "Amman", child: Text("Amman")),
    const DropdownMenuItem(value: "Zarqa", child: Text("Zarqa")),
    const DropdownMenuItem(value: "Karak", child: Text("Karak")),
    const DropdownMenuItem(value: "Mafraq", child: Text("Mafraq")),
    const DropdownMenuItem(value: "Aqaba", child: Text("Aqaba")),
    const DropdownMenuItem(value: "Madaba", child: Text("Madaba")),
  ]),
  DropDownModel(value: 'Tomato', item: [
    const DropdownMenuItem(value: "Tomato", child: Text("Tomato")),
    const DropdownMenuItem(value: "Potato", child: Text("Potato")),
  ]),
];