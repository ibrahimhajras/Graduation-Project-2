import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/Crud.dart';

import '../../Utils/Static/links.dart';
import '../../Utils/Static/route.dart';
import '../../main.dart';

final Crud _crud = Crud();
logIn(BuildContext context,TextEditingController email,TextEditingController pass) async {
  try {
    var response = await _crud.postRequest(linkLogin, {
      "Email": email.text,
      "Password": pass.text,

    });
    if (response['status'] == "s") {
      if (response['data']['Id_UserType'] == "1") {
        sharedPreferences.setString("Id", response['data']['Id'].toString());
        sharedPreferences.setString("Email", response['data']['Email']);
        sharedPreferences.setString("User_Name", response['data']['User_Name']);
        sharedPreferences.setString("Password", response['data']['Password']);
        sharedPreferences.setString("Id_UserType", response['data']['Id_UserType'].toString());
        print(sharedPreferences.getString("Id_UserType"));
        Get.offAllNamed(AppRoute.home);
      } else if(response['data']['Id_UserType'] == "2"){
        sharedPreferences.setString("Id", response['data']['Id'].toString());
        sharedPreferences.setString("Email", response['data']['Email']);
        sharedPreferences.setString("User_Name", response['data']['User_Name']);
        sharedPreferences.setString("Password", response['data']['Password']);
        sharedPreferences.setString("Id_UserType", response['data']['Id_UserType'].toString());
        Get.offAllNamed(AppRoute.home);
      }
    }
  } catch (e) {
    print("errrrrrrrrrror $e");
  }
}